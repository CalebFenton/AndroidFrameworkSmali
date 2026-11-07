.class Landroid/net/ConnectivityManager$4;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"

# interfaces
.implements Landroid/net/TetheringManager$TetheringEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/ConnectivityManager$OnTetheringEventCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/net/ConnectivityManager$OnTetheringEventCallback;


# direct methods
.method constructor blacklist <init>(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$OnTetheringEventCallback;)V
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

    .line 3315
    iput-object p2, p0, Landroid/net/ConnectivityManager$4;->val$callback:Landroid/net/ConnectivityManager$OnTetheringEventCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onUpstreamChanged(Landroid/net/Network;)V
    .registers 3
    .param p1, "network"    # Landroid/net/Network;

    .line 3318
    iget-object v0, p0, Landroid/net/ConnectivityManager$4;->val$callback:Landroid/net/ConnectivityManager$OnTetheringEventCallback;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager$OnTetheringEventCallback;->onUpstreamChanged(Landroid/net/Network;)V

    .line 3319
    return-void
.end method
