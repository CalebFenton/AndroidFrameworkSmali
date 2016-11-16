.class public Landroid/net/wifi/nan/PublishSettings;
.super Ljava/lang/Object;
.source "PublishSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/PublishSettings$1;,
        Landroid/net/wifi/nan/PublishSettings$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/nan/PublishSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLISH_TYPE_SOLICITED:I = 0x1

.field public static final PUBLISH_TYPE_UNSOLICITED:I


# instance fields
.field public final mPublishCount:I

.field public final mPublishType:I

.field public final mTtlSec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 86
    new-instance v0, Landroid/net/wifi/nan/PublishSettings$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/nan/PublishSettings$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/nan/PublishSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method private constructor <init>(III)V
    .locals 0
    .param p1, "publishType"    # I
    .param p2, "publichCount"    # I
    .param p3, "ttlSec"    # I

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iput p1, p0, Landroid/net/wifi/nan/PublishSettings;->mPublishType:I

    #@5
    .line 64
    iput p2, p0, Landroid/net/wifi/nan/PublishSettings;->mPublishCount:I

    #@7
    .line 65
    iput p3, p0, Landroid/net/wifi/nan/PublishSettings;->mTtlSec:I

    #@9
    .line 62
    return-void
.end method

.method synthetic constructor <init>(IIILandroid/net/wifi/nan/PublishSettings;)V
    .locals 0
    .param p1, "publishType"    # I
    .param p2, "publichCount"    # I
    .param p3, "ttlSec"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/nan/PublishSettings;-><init>(III)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 76
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 103
    if-ne p0, p1, :cond_0

    #@4
    .line 104
    return v1

    #@5
    .line 107
    :cond_0
    instance-of v3, p1, Landroid/net/wifi/nan/PublishSettings;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 108
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 111
    nop

    #@c
    nop

    #@d
    .line 113
    .local v0, "lhs":Landroid/net/wifi/nan/PublishSettings;
    iget v3, p0, Landroid/net/wifi/nan/PublishSettings;->mPublishType:I

    #@f
    iget v4, v0, Landroid/net/wifi/nan/PublishSettings;->mPublishType:I

    #@11
    if-ne v3, v4, :cond_3

    #@13
    iget v3, p0, Landroid/net/wifi/nan/PublishSettings;->mPublishCount:I

    #@15
    iget v4, v0, Landroid/net/wifi/nan/PublishSettings;->mPublishCount:I

    #@17
    if-ne v3, v4, :cond_3

    #@19
    .line 114
    iget v3, p0, Landroid/net/wifi/nan/PublishSettings;->mTtlSec:I

    #@1b
    iget v4, v0, Landroid/net/wifi/nan/PublishSettings;->mTtlSec:I

    #@1d
    if-ne v3, v4, :cond_2

    #@1f
    .line 113
    :goto_0
    return v1

    #@20
    :cond_2
    move v1, v2

    #@21
    .line 114
    goto :goto_0

    #@22
    :cond_3
    move v1, v2

    #@23
    .line 113
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 121
    iget v1, p0, Landroid/net/wifi/nan/PublishSettings;->mPublishType:I

    #@2
    add-int/lit16 v0, v1, 0x20f

    #@4
    .line 122
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@6
    iget v2, p0, Landroid/net/wifi/nan/PublishSettings;->mPublishCount:I

    #@8
    add-int v0, v1, v2

    #@a
    .line 123
    mul-int/lit8 v1, v0, 0x1f

    #@c
    iget v2, p0, Landroid/net/wifi/nan/PublishSettings;->mTtlSec:I

    #@e
    add-int v0, v1, v2

    #@10
    .line 125
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "PublishSettings [mPublishType="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/net/wifi/nan/PublishSettings;->mPublishType:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", mPublishCount="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/net/wifi/nan/PublishSettings;->mPublishCount:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 71
    const-string/jumbo v1, ", mTtlSec="

    #@22
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 71
    iget v1, p0, Landroid/net/wifi/nan/PublishSettings;->mTtlSec:I

    #@28
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 71
    const-string/jumbo v1, "]"

    #@2f
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 81
    iget v0, p0, Landroid/net/wifi/nan/PublishSettings;->mPublishType:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 82
    iget v0, p0, Landroid/net/wifi/nan/PublishSettings;->mPublishCount:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 83
    iget v0, p0, Landroid/net/wifi/nan/PublishSettings;->mTtlSec:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 80
    return-void
.end method
