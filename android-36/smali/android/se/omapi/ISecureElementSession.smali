.class public interface abstract Landroid/se/omapi/ISecureElementSession;
.super Ljava/lang/Object;
.source "ISecureElementSession.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/ISecureElementSession$Stub;,
        Landroid/se/omapi/ISecureElementSession$Default;
    }
.end annotation


# static fields
.field public static final blacklist HASH:Ljava/lang/String; = "894069bcfe4f35ceb2088278ddf87c83adee8014"

.field public static final blacklist VERSION:I = 0x1


# virtual methods
.method public abstract greylist-max-o close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o closeChannels()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o getAtr()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

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

.method public abstract greylist-max-o isClosed()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o openBasicChannel([BBLandroid/se/omapi/ISecureElementListener;)Landroid/se/omapi/ISecureElementChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o openLogicalChannel([BBLandroid/se/omapi/ISecureElementListener;)Landroid/se/omapi/ISecureElementChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
