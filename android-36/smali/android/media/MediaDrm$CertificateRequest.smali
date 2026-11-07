.class public final Landroid/media/MediaDrm$CertificateRequest;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CertificateRequest"
.end annotation


# instance fields
.field private greylist-max-o mData:[B

.field private greylist-max-o mDefaultUrl:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>([BLjava/lang/String;)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "defaultUrl"    # Ljava/lang/String;

    .line 2460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2461
    iput-object p1, p0, Landroid/media/MediaDrm$CertificateRequest;->mData:[B

    .line 2462
    iput-object p2, p0, Landroid/media/MediaDrm$CertificateRequest;->mDefaultUrl:Ljava/lang/String;

    .line 2463
    return-void
.end method


# virtual methods
.method public greylist getData()[B
    .registers 2

    .line 2470
    iget-object v0, p0, Landroid/media/MediaDrm$CertificateRequest;->mData:[B

    return-object v0
.end method

.method public greylist getDefaultUrl()Ljava/lang/String;
    .registers 2

    .line 2479
    iget-object v0, p0, Landroid/media/MediaDrm$CertificateRequest;->mDefaultUrl:Ljava/lang/String;

    return-object v0
.end method
