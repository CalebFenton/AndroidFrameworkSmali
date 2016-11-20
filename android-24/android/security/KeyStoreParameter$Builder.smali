.class public final Landroid/security/KeyStoreParameter$Builder;
.super Ljava/lang/Object;
.source "KeyStoreParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyStoreParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mFlags:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 112
    if-nez p1, :cond_0

    #@5
    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "context == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Landroid/security/KeyStoreParameter;
    .locals 3

    #@0
    .prologue
    .line 148
    new-instance v0, Landroid/security/KeyStoreParameter;

    #@2
    .line 149
    iget v1, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    #@4
    .line 148
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroid/security/KeyStoreParameter;-><init>(ILandroid/security/KeyStoreParameter;)V

    #@8
    return-object v0
.end method

.method public setEncryptionRequired(Z)Landroid/security/KeyStoreParameter$Builder;
    .locals 1
    .param p1, "required"    # Z

    #@0
    .prologue
    .line 132
    if-eqz p1, :cond_0

    #@2
    .line 133
    iget v0, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    #@4
    or-int/lit8 v0, v0, 0x1

    #@6
    iput v0, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    #@8
    .line 137
    :goto_0
    return-object p0

    #@9
    .line 135
    :cond_0
    iget v0, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    #@b
    and-int/lit8 v0, v0, -0x2

    #@d
    iput v0, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    #@f
    goto :goto_0
.end method
