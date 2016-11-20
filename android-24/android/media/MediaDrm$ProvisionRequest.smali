.class public final Landroid/media/MediaDrm$ProvisionRequest;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvisionRequest"
.end annotation


# instance fields
.field private mData:[B

.field private mDefaultUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 2

    #@0
    .prologue
    .line 840
    iget-object v0, p0, Landroid/media/MediaDrm$ProvisionRequest;->mData:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 844
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ProvisionRequest is not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 846
    :cond_0
    iget-object v0, p0, Landroid/media/MediaDrm$ProvisionRequest;->mData:[B

    #@f
    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 857
    iget-object v0, p0, Landroid/media/MediaDrm$ProvisionRequest;->mDefaultUrl:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 861
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ProvisionRequest is not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 863
    :cond_0
    iget-object v0, p0, Landroid/media/MediaDrm$ProvisionRequest;->mDefaultUrl:Ljava/lang/String;

    #@f
    return-object v0
.end method
