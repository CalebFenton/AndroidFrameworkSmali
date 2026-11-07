.class public interface abstract Landroid/se/omapi/ISecureElementListener;
.super Ljava/lang/Object;
.source "ISecureElementListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/ISecureElementListener$Stub;,
        Landroid/se/omapi/ISecureElementListener$Default;
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
