.class Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;
.super Ljava/lang/Object;
.source "AndroidKeyStoreLoadStoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private final mUid:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;->mUid:I

    #@5
    .line 26
    return-void
.end method


# virtual methods
.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    #@0
    .prologue
    .line 32
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method getUid()I
    .locals 1

    #@0
    .prologue
    .line 36
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;->mUid:I

    #@2
    return v0
.end method
