.class public interface abstract Landroid/security/legacykeystore/ILegacyKeystore;
.super Ljava/lang/Object;
.source "ILegacyKeystore.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/legacykeystore/ILegacyKeystore$Stub;,
        Landroid/security/legacykeystore/ILegacyKeystore$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.legacykeystore.ILegacyKeystore"

.field public static final blacklist ERROR_ENTRY_NOT_FOUND:I = 0x7

.field public static final blacklist ERROR_PERMISSION_DENIED:I = 0x6

.field public static final blacklist ERROR_SYSTEM_ERROR:I = 0x4

.field public static final blacklist UID_SELF:I = -0x1


# virtual methods
.method public abstract blacklist get(Ljava/lang/String;I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist list(Ljava/lang/String;I)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist put(Ljava/lang/String;I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist remove(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
