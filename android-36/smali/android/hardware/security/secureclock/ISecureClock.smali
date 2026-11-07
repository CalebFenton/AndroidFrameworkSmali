.class public interface abstract Landroid/hardware/security/secureclock/ISecureClock;
.super Ljava/lang/Object;
.source "ISecureClock.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/security/secureclock/ISecureClock$Stub;,
        Landroid/hardware/security/secureclock/ISecureClock$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String;

.field public static final blacklist HASH:Ljava/lang/String; = "cd55ca9963c6a57fa5f2f120a45c6e0c4fafb423"

.field public static final blacklist TIME_STAMP_MAC_LABEL:Ljava/lang/String; = "Auth Verification"

.field public static final blacklist VERSION:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 220
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$security$secureclock$ISecureClock"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/security/secureclock/ISecureClock;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract blacklist generateTimeStamp(J)Landroid/hardware/security/secureclock/TimeStampToken;
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
