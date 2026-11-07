.class public Landroid/hardware/face/FaceManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private final blacklist mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

.field private final blacklist mFace:Landroid/hardware/face/Face;

.field private final blacklist mIsStrongBiometric:Z

.field private final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/biometrics/CryptoObject;Landroid/hardware/face/Face;IZ)V
    .registers 5
    .param p1, "crypto"    # Landroid/hardware/biometrics/CryptoObject;
    .param p2, "face"    # Landroid/hardware/face/Face;
    .param p3, "userId"    # I
    .param p4, "isStrongBiometric"    # Z

    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 997
    iput-object p1, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    .line 998
    iput-object p2, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mFace:Landroid/hardware/face/Face;

    .line 999
    iput p3, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mUserId:I

    .line 1000
    iput-boolean p4, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mIsStrongBiometric:Z

    .line 1001
    return-void
.end method


# virtual methods
.method public blacklist getCryptoObject()Landroid/hardware/biometrics/CryptoObject;
    .registers 2

    .line 1011
    iget-object v0, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    return-object v0
.end method

.method public blacklist getFace()Landroid/hardware/face/Face;
    .registers 2

    .line 1021
    iget-object v0, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mFace:Landroid/hardware/face/Face;

    return-object v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 1030
    iget v0, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mUserId:I

    return v0
.end method

.method public blacklist isStrongBiometric()Z
    .registers 2

    .line 1040
    iget-boolean v0, p0, Landroid/hardware/face/FaceManager$AuthenticationResult;->mIsStrongBiometric:Z

    return v0
.end method
