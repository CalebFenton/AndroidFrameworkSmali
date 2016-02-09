.class public final Landroid/service/carrier/CarrierMessagingService$SendMmsResult;
.super Ljava/lang/Object;
.source "CarrierMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendMmsResult"
.end annotation


# instance fields
.field private mSendConfPdu:[B

.field private mSendStatus:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "sendStatus"    # I
    .param p2, "sendConfPdu"    # [B

    #@0
    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 286
    iput p1, p0, Landroid/service/carrier/CarrierMessagingService$SendMmsResult;->mSendStatus:I

    #@5
    .line 287
    iput-object p2, p0, Landroid/service/carrier/CarrierMessagingService$SendMmsResult;->mSendConfPdu:[B

    #@7
    .line 285
    return-void
.end method


# virtual methods
.method public getSendConfPdu()[B
    .locals 1

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingService$SendMmsResult;->mSendConfPdu:[B

    #@2
    return-object v0
.end method

.method public getSendStatus()I
    .locals 1

    #@0
    .prologue
    .line 297
    iget v0, p0, Landroid/service/carrier/CarrierMessagingService$SendMmsResult;->mSendStatus:I

    #@2
    return v0
.end method
