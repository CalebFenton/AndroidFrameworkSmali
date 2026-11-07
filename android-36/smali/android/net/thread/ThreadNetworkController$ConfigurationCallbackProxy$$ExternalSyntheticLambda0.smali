.class public final synthetic Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;

.field public final synthetic blacklist f$1:Landroid/net/thread/ThreadConfiguration;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;Landroid/net/thread/ThreadConfiguration;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;

    iput-object p2, p0, Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy$$ExternalSyntheticLambda0;->f$1:Landroid/net/thread/ThreadConfiguration;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;

    iget-object v1, p0, Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy$$ExternalSyntheticLambda0;->f$1:Landroid/net/thread/ThreadConfiguration;

    invoke-static {v0, v1}, Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;->$r8$lambda$PlZR7sB98-_SMXXxiY5yijW2o9Q(Landroid/net/thread/ThreadNetworkController$ConfigurationCallbackProxy;Landroid/net/thread/ThreadConfiguration;)V

    return-void
.end method
