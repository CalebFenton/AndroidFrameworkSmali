.class public interface abstract Landroid/se/omapi/ISecureElementService;
.super Ljava/lang/Object;
.source "ISecureElementService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/ISecureElementService$Stub;,
        Landroid/se/omapi/ISecureElementService$Default;
    }
.end annotation


# static fields
.field public static final blacklist HASH:Ljava/lang/String; = "894069bcfe4f35ceb2088278ddf87c83adee8014"

.field public static final blacklist VERSION:I = 0x1


# virtual methods
.method public abstract blacklist getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o getReader(Ljava/lang/String;)Landroid/se/omapi/ISecureElementReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o getReaders()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isNfcEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;I)[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
