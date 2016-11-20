.class public final Landroid/media/MediaDrm$KeyRequest;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyRequest"
.end annotation


# static fields
.field public static final REQUEST_TYPE_INITIAL:I = 0x0

.field public static final REQUEST_TYPE_RELEASE:I = 0x2

.field public static final REQUEST_TYPE_RENEWAL:I = 0x1


# instance fields
.field private mData:[B

.field private mDefaultUrl:Ljava/lang/String;

.field private mRequestType:I


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 2

    #@0
    .prologue
    .line 699
    iget-object v0, p0, Landroid/media/MediaDrm$KeyRequest;->mData:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 703
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "KeyRequest is not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 705
    :cond_0
    iget-object v0, p0, Landroid/media/MediaDrm$KeyRequest;->mData:[B

    #@f
    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 716
    iget-object v0, p0, Landroid/media/MediaDrm$KeyRequest;->mDefaultUrl:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 720
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "KeyRequest is not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 722
    :cond_0
    iget-object v0, p0, Landroid/media/MediaDrm$KeyRequest;->mDefaultUrl:Ljava/lang/String;

    #@f
    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    #@0
    .prologue
    .line 731
    iget v0, p0, Landroid/media/MediaDrm$KeyRequest;->mRequestType:I

    #@2
    return v0
.end method
