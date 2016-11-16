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


# instance fields
.field private final mFlags:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    iput p1, p0, Landroid/security/KeyStoreParameter;->mFlags:I

    #@5
    .line 54
    return-void
.end method

.method synthetic constructor <init>(ILandroid/security/KeyStoreParameter;)V
    .locals 0
    .param p1, "flags"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/security/KeyStoreParameter;-><init>(I)V

    #@3
    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 62
    iget v0, p0, Landroid/security/KeyStoreParameter;->mFlags:I

    #@2
    return v0
.end method

.method public isEncryptionRequired()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 79
    iget v1, p0, Landroid/security/KeyStoreParameter;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method
