.class public Landroid/security/legacykeystore/ILegacyKeystore$Default;
.super Ljava/lang/Object;
.source "ILegacyKeystore.java"

# interfaces
.implements Landroid/security/legacykeystore/ILegacyKeystore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/legacykeystore/ILegacyKeystore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist get(Ljava/lang/String;I)[B
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist list(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist put(Ljava/lang/String;I[B)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "blob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist remove(Ljava/lang/String;I)V
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method
