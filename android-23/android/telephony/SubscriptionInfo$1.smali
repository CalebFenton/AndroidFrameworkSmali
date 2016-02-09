.class final Landroid/telephony/SubscriptionInfo$1;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubscriptionInfo;
    .locals 14
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 290
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 291
    .local v2, "iccId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v3

    #@c
    .line 292
    .local v3, "simSlotIndex":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@f
    move-result-object v4

    #@10
    .line 293
    .local v4, "displayName":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@13
    move-result-object v5

    #@14
    .line 294
    .local v5, "carrierName":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v6

    #@18
    .line 295
    .local v6, "nameSource":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v7

    #@1c
    .line 296
    .local v7, "iconTint":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v8

    #@20
    .line 297
    .local v8, "number":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v9

    #@24
    .line 298
    .local v9, "dataRoaming":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v11

    #@28
    .line 299
    .local v11, "mcc":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v12

    #@2c
    .line 300
    .local v12, "mnc":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f
    move-result-object v13

    #@30
    .line 301
    .local v13, "countryIso":Ljava/lang/String;
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@32
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@35
    move-result-object v10

    #@36
    check-cast v10, Landroid/graphics/Bitmap;

    #@38
    .line 303
    .local v10, "iconBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/telephony/SubscriptionInfo;

    #@3a
    invoke-direct/range {v0 .. v13}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;)V

    #@3d
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 288
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubscriptionInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 309
    new-array v0, p1, [Landroid/telephony/SubscriptionInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 308
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionInfo$1;->newArray(I)[Landroid/telephony/SubscriptionInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
