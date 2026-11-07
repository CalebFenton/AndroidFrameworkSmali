.class public interface abstract Landroid/security/apc/IProtectedConfirmation;
.super Ljava/lang/Object;
.source "IProtectedConfirmation.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/apc/IProtectedConfirmation$Stub;,
        Landroid/security/apc/IProtectedConfirmation$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.apc.IProtectedConfirmation"

.field public static final blacklist FLAG_UI_OPTION_INVERTED:I = 0x1

.field public static final blacklist FLAG_UI_OPTION_MAGNIFIED:I = 0x2


# virtual methods
.method public abstract blacklist cancelPrompt(Landroid/security/apc/IConfirmationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isSupported()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist presentPrompt(Landroid/security/apc/IConfirmationCallback;Ljava/lang/String;[BLjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
