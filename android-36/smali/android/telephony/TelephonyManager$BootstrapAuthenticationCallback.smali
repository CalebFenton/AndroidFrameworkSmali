.class public Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BootstrapAuthenticationCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 18236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAuthenticationFailure(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 18249
    return-void
.end method

.method public whitelist onKeysAvailable([BLjava/lang/String;)V
    .registers 3
    .param p1, "gbaKey"    # [B
    .param p2, "transactionId"    # Ljava/lang/String;

    .line 18244
    return-void
.end method
