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
.field private mData:[B

.field private mDefaultUrl:Ljava/lang/String;


# direct methods
.method constructor <init>([BLjava/lang/String;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "defaultUrl"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1187
    iput-object p1, p0, Landroid/media/MediaDrm$CertificateRequest;->mData:[B

    #@5
    .line 1188
    iput-object p2, p0, Landroid/media/MediaDrm$CertificateRequest;->mDefaultUrl:Ljava/lang/String;

    #@7
    .line 1186
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    #@0
    .prologue
    .line 1195
    iget-object v0, p0, Landroid/media/MediaDrm$CertificateRequest;->mData:[B

    #@2
    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1203
    iget-object v0, p0, Landroid/media/MediaDrm$CertificateRequest;->mDefaultUrl:Ljava/lang/String;

    #@2
    return-object v0
.end method
