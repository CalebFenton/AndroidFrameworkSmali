.class final Landroid/net/LinkQualityInfo$1;
.super Ljava/lang/Object;
.source "LinkQualityInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkQualityInfo;
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
        "Landroid/net/LinkQualityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkQualityInfo;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 117
    .local v1, "objectType":I
    const/4 v2, 0x1

    #@5
    if-ne v1, v2, :cond_0

    #@7
    .line 118
    new-instance v0, Landroid/net/LinkQualityInfo;

    #@9
    invoke-direct {v0}, Landroid/net/LinkQualityInfo;-><init>()V

    #@c
    .line 119
    .local v0, "li":Landroid/net/LinkQualityInfo;
    invoke-virtual {v0, p1}, Landroid/net/LinkQualityInfo;->initializeFromParcel(Landroid/os/Parcel;)V

    #@f
    .line 120
    return-object v0

    #@10
    .line 121
    .end local v0    # "li":Landroid/net/LinkQualityInfo;
    :cond_0
    const/4 v2, 0x2

    #@11
    if-ne v1, v2, :cond_1

    #@13
    .line 122
    invoke-static {p1}, Landroid/net/WifiLinkQualityInfo;->createFromParcelBody(Landroid/os/Parcel;)Landroid/net/WifiLinkQualityInfo;

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 123
    :cond_1
    const/4 v2, 0x3

    #@19
    if-ne v1, v2, :cond_2

    #@1b
    .line 124
    invoke-static {p1}, Landroid/net/MobileLinkQualityInfo;->createFromParcelBody(Landroid/os/Parcel;)Landroid/net/MobileLinkQualityInfo;

    #@1e
    move-result-object v2

    #@1f
    return-object v2

    #@20
    .line 126
    :cond_2
    const/4 v2, 0x0

    #@21
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 115
    invoke-virtual {p0, p1}, Landroid/net/LinkQualityInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkQualityInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/LinkQualityInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 131
    new-array v0, p1, [Landroid/net/LinkQualityInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 130
    invoke-virtual {p0, p1}, Landroid/net/LinkQualityInfo$1;->newArray(I)[Landroid/net/LinkQualityInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method