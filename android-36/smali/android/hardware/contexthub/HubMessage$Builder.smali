.class public final Landroid/hardware/contexthub/HubMessage$Builder;
.super Ljava/lang/Object;
.source "HubMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/HubMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mMessageBody:[B

.field private blacklist mMessageType:I

.field private blacklist mResponseRequired:Z


# direct methods
.method public constructor whitelist <init>(I[B)V
    .registers 4
    .param p1, "messageType"    # I
    .param p2, "messageBody"    # [B

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contexthub/HubMessage$Builder;->mResponseRequired:Z

    .line 213
    iput p1, p0, Landroid/hardware/contexthub/HubMessage$Builder;->mMessageType:I

    .line 214
    iput-object p2, p0, Landroid/hardware/contexthub/HubMessage$Builder;->mMessageBody:[B

    .line 215
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/contexthub/HubMessage;
    .registers 6

    .line 231
    new-instance v0, Landroid/hardware/contexthub/HubMessage;

    iget v1, p0, Landroid/hardware/contexthub/HubMessage$Builder;->mMessageType:I

    iget-object v2, p0, Landroid/hardware/contexthub/HubMessage$Builder;->mMessageBody:[B

    iget-boolean v3, p0, Landroid/hardware/contexthub/HubMessage$Builder;->mResponseRequired:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/contexthub/HubMessage;-><init>(I[BZLandroid/hardware/contexthub/HubMessage-IA;)V

    return-object v0
.end method

.method public whitelist setResponseRequired(Z)Landroid/hardware/contexthub/HubMessage$Builder;
    .registers 2
    .param p1, "responseRequired"    # Z

    .line 224
    iput-boolean p1, p0, Landroid/hardware/contexthub/HubMessage$Builder;->mResponseRequired:Z

    .line 225
    return-object p0
.end method
