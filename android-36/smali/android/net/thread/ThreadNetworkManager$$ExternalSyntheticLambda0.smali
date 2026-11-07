.class public final synthetic Landroid/net/thread/ThreadNetworkManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    new-instance v0, Landroid/net/thread/ThreadNetworkController;

    check-cast p1, Landroid/net/connectivity/android/net/thread/IThreadNetworkController;

    invoke-direct {v0, p1}, Landroid/net/thread/ThreadNetworkController;-><init>(Landroid/net/connectivity/android/net/thread/IThreadNetworkController;)V

    return-object v0
.end method
