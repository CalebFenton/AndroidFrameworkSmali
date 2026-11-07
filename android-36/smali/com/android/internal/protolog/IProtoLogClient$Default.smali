.class public Lcom/android/internal/protolog/IProtoLogClient$Default;
.super Ljava/lang/Object;
.source "IProtoLogClient.java"

# interfaces
.implements Lcom/android/internal/protolog/IProtoLogClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/IProtoLogClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist toggleLogcat(Z[Ljava/lang/String;)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "groups"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
