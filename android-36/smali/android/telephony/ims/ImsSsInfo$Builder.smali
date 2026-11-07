.class public final Landroid/telephony/ims/ImsSsInfo$Builder;
.super Ljava/lang/Object;
.source "ImsSsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsSsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mImsSsInfo:Landroid/telephony/ims/ImsSsInfo;


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "status"    # I

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Landroid/telephony/ims/ImsSsInfo;

    invoke-direct {v0}, Landroid/telephony/ims/ImsSsInfo;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsSsInfo$Builder;->mImsSsInfo:Landroid/telephony/ims/ImsSsInfo;

    .line 183
    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo$Builder;->mImsSsInfo:Landroid/telephony/ims/ImsSsInfo;

    iput p1, v0, Landroid/telephony/ims/ImsSsInfo;->mStatus:I

    .line 184
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/ims/ImsSsInfo;
    .registers 2

    .line 224
    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo$Builder;->mImsSsInfo:Landroid/telephony/ims/ImsSsInfo;

    return-object v0
.end method

.method public whitelist setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;
    .registers 3
    .param p1, "status"    # I

    .line 208
    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo$Builder;->mImsSsInfo:Landroid/telephony/ims/ImsSsInfo;

    invoke-static {v0, p1}, Landroid/telephony/ims/ImsSsInfo;->-$$Nest$fputmClirInterrogationStatus(Landroid/telephony/ims/ImsSsInfo;I)V

    .line 209
    return-object p0
.end method

.method public whitelist setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;
    .registers 3
    .param p1, "state"    # I

    .line 216
    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo$Builder;->mImsSsInfo:Landroid/telephony/ims/ImsSsInfo;

    invoke-static {v0, p1}, Landroid/telephony/ims/ImsSsInfo;->-$$Nest$fputmClirOutgoingState(Landroid/telephony/ims/ImsSsInfo;I)V

    .line 217
    return-object p0
.end method

.method public whitelist setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;
    .registers 3
    .param p1, "number"    # Ljava/lang/String;

    .line 191
    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo$Builder;->mImsSsInfo:Landroid/telephony/ims/ImsSsInfo;

    iput-object p1, v0, Landroid/telephony/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    .line 192
    return-object p0
.end method

.method public whitelist setProvisionStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;
    .registers 3
    .param p1, "provisionStatus"    # I

    .line 199
    iget-object v0, p0, Landroid/telephony/ims/ImsSsInfo$Builder;->mImsSsInfo:Landroid/telephony/ims/ImsSsInfo;

    iput p1, v0, Landroid/telephony/ims/ImsSsInfo;->mProvisionStatus:I

    .line 200
    return-object p0
.end method
