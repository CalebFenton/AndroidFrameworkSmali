.class final Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
.super Ljava/lang/Object;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmsCbConcatInfo"
.end annotation


# instance fields
.field private final mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

.field private final mLocation:Landroid/telephony/SmsCbLocation;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V
    .locals 0
    .param p1, "header"    # Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .param p2, "location"    # Landroid/telephony/SmsCbLocation;

    #@0
    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 207
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    #@5
    .line 208
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->mLocation:Landroid/telephony/SmsCbLocation;

    #@7
    .line 206
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 218
    instance-of v2, p1, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 219
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    #@8
    .line 224
    .local v0, "other":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    #@a
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    #@d
    move-result v2

    #@e
    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    #@10
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    #@13
    move-result v3

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 225
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->mLocation:Landroid/telephony/SmsCbLocation;

    #@18
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->mLocation:Landroid/telephony/SmsCbLocation;

    #@1a
    invoke-virtual {v1, v2}, Landroid/telephony/SmsCbLocation;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    .line 224
    :cond_0
    return v1

    #@1f
    .line 228
    .end local v0    # "other":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x1f

    #@8
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->mLocation:Landroid/telephony/SmsCbLocation;

    #@a
    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->hashCode()I

    #@d
    move-result v1

    #@e
    add-int/2addr v0, v1

    #@f
    return v0
.end method

.method public matchesLocation(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "lac"    # I
    .param p3, "cid"    # I

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->mLocation:Landroid/telephony/SmsCbLocation;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/SmsCbLocation;->isInLocationArea(Ljava/lang/String;II)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
