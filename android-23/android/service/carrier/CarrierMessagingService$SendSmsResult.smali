.class public final Landroid/service/carrier/CarrierMessagingService$SendSmsResult;
.super Ljava/lang/Object;
.source "CarrierMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendSmsResult"
.end annotation


# instance fields
.field private final mMessageRef:I

.field private final mSendStatus:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "sendStatus"    # I
    .param p2, "messageRef"    # I

    #@0
    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 327
    iput p1, p0, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;->mSendStatus:I

    #@5
    .line 328
    iput p2, p0, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;->mMessageRef:I

    #@7
    .line 326
    return-void
.end method


# virtual methods
.method public getMessageRef()I
    .locals 1

    #@0
    .prologue
    .line 337
    iget v0, p0, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;->mMessageRef:I

    #@2
    return v0
.end method

.method public getSendStatus()I
    .locals 1

    #@0
    .prologue
    .line 346
    iget v0, p0, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;->mSendStatus:I

    #@2
    return v0
.end method
