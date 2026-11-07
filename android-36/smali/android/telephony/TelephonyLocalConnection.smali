.class public Landroid/telephony/TelephonyLocalConnection;
.super Ljava/lang/Object;
.source "TelephonyLocalConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyLocalConnection$ConnectionImpl;
    }
.end annotation


# static fields
.field private static blacklist sInstance:Landroid/telephony/TelephonyLocalConnection$ConnectionImpl;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkInstance()V
    .registers 2

    .line 39
    sget-object v0, Landroid/telephony/TelephonyLocalConnection;->sInstance:Landroid/telephony/TelephonyLocalConnection$ConnectionImpl;

    if-eqz v0, :cond_5

    .line 42
    return-void

    .line 40
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection impl is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getCallComposerServerUrlForHandle(ILjava/util/UUID;)Ljava/lang/String;
    .registers 3
    .param p0, "subscriptionId"    # I
    .param p1, "uuid"    # Ljava/util/UUID;

    .line 34
    invoke-static {}, Landroid/telephony/TelephonyLocalConnection;->checkInstance()V

    .line 35
    sget-object v0, Landroid/telephony/TelephonyLocalConnection;->sInstance:Landroid/telephony/TelephonyLocalConnection$ConnectionImpl;

    invoke-interface {v0, p0, p1}, Landroid/telephony/TelephonyLocalConnection$ConnectionImpl;->getCallComposerServerUrlForHandle(ILjava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist setInstance(Landroid/telephony/TelephonyLocalConnection$ConnectionImpl;)V
    .registers 1
    .param p0, "impl"    # Landroid/telephony/TelephonyLocalConnection$ConnectionImpl;

    .line 45
    sput-object p0, Landroid/telephony/TelephonyLocalConnection;->sInstance:Landroid/telephony/TelephonyLocalConnection$ConnectionImpl;

    .line 46
    return-void
.end method
