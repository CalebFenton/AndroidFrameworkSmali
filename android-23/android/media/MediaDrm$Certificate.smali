.class public final Landroid/media/MediaDrm$Certificate;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Certificate"
.end annotation


# instance fields
.field private mCertificateData:[B

.field private mWrappedKey:[B


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getContent()[B
    .locals 2

    #@0
    .prologue
    .line 1255
    iget-object v0, p0, Landroid/media/MediaDrm$Certificate;->mCertificateData:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1259
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Cerfificate is not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1261
    :cond_0
    iget-object v0, p0, Landroid/media/MediaDrm$Certificate;->mCertificateData:[B

    #@f
    return-object v0
.end method

.method public getWrappedPrivateKey()[B
    .locals 2

    #@0
    .prologue
    .line 1241
    iget-object v0, p0, Landroid/media/MediaDrm$Certificate;->mWrappedKey:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1245
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Cerfificate is not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 1247
    :cond_0
    iget-object v0, p0, Landroid/media/MediaDrm$Certificate;->mWrappedKey:[B

    #@f
    return-object v0
.end method
