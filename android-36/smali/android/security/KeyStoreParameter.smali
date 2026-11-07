.class public final Landroid/security/KeyStoreParameter;
.super Ljava/lang/Object;
.source "KeyStoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStoreParameter$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/security/KeyStoreParameter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/KeyStoreParameter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getFlags()I
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEncryptionRequired()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    const/4 v0, 0x0

    return v0
.end method
