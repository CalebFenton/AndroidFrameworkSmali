.class Landroid/net/ConnectivityManager$3;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"

# interfaces
.implements Landroid/net/TetheringManager$StartTetheringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;


# direct methods
.method constructor blacklist <init>(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$OnStartTetheringCallback;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/ConnectivityManager;
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

    .line 3232
    iput-object p2, p0, Landroid/net/ConnectivityManager$3;->val$callback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTetheringFailed(I)V
    .registers 3
    .param p1, "error"    # I

    .line 3240
    iget-object v0, p0, Landroid/net/ConnectivityManager$3;->val$callback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    .line 3241
    return-void
.end method

.method public whitelist onTetheringStarted()V
    .registers 2

    .line 3235
    iget-object v0, p0, Landroid/net/ConnectivityManager$3;->val$callback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringStarted()V

    .line 3236
    return-void
.end method
