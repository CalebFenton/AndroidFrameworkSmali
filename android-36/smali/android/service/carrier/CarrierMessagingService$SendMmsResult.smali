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
.field private greylist-max-o mSendConfPdu:[B

.field private greylist-max-o mSendStatus:I


# direct methods
.method public constructor whitelist <init>(I[B)V
    .registers 3
    .param p1, "sendStatus"    # I
    .param p2, "sendConfPdu"    # [B

    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 805
    iput p1, p0, Landroid/service/carrier/CarrierMessagingService$SendMmsResult;->mSendStatus:I

    .line 806
    iput-object p2, p0, Landroid/service/carrier/CarrierMessagingService$SendMmsResult;->mSendConfPdu:[B

    .line 807
    return-void
.end method


# virtual methods
.method public whitelist getSendConfPdu()[B
    .registers 2

    .line 825
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingService$SendMmsResult;->mSendConfPdu:[B

    return-object v0
.end method

.method public whitelist getSendStatus()I
    .registers 2

    .line 816
    iget v0, p0, Landroid/service/carrier/CarrierMessagingService$SendMmsResult;->mSendStatus:I

    return v0
.end method
