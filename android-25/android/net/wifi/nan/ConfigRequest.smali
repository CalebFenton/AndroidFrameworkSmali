.class public Landroid/net/wifi/nan/ConfigRequest;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/ConfigRequest$1;,
        Landroid/net/wifi/nan/ConfigRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLUSTER_ID_MAX:I = 0xffff

.field public static final CLUSTER_ID_MIN:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/nan/ConfigRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mClusterHigh:I

.field public final mClusterLow:I

.field public final mMasterPreference:I

.field public final mSupport5gBand:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 104
    new-instance v0, Landroid/net/wifi/nan/ConfigRequest$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/nan/ConfigRequest$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/nan/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method private constructor <init>(ZIII)V
    .locals 0
    .param p1, "support5gBand"    # Z
    .param p2, "masterPreference"    # I
    .param p3, "clusterLow"    # I
    .param p4, "clusterHigh"    # I

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 78
    iput-boolean p1, p0, Landroid/net/wifi/nan/ConfigRequest;->mSupport5gBand:Z

    #@5
    .line 79
    iput p2, p0, Landroid/net/wifi/nan/ConfigRequest;->mMasterPreference:I

    #@7
    .line 80
    iput p3, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterLow:I

    #@9
    .line 81
    iput p4, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterHigh:I

    #@b
    .line 77
    return-void
.end method

.method synthetic constructor <init>(ZIIILandroid/net/wifi/nan/ConfigRequest;)V
    .locals 0
    .param p1, "support5gBand"    # Z
    .param p2, "masterPreference"    # I
    .param p3, "clusterLow"    # I
    .param p4, "clusterHigh"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/wifi/nan/ConfigRequest;-><init>(ZIII)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 93
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
    .line 122
    if-ne p0, p1, :cond_0

    #@4
    .line 123
    return v1

    #@5
    .line 126
    :cond_0
    instance-of v3, p1, Landroid/net/wifi/nan/ConfigRequest;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 127
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 130
    nop

    #@c
    nop

    #@d
    .line 132
    .local v0, "lhs":Landroid/net/wifi/nan/ConfigRequest;
    iget-boolean v3, p0, Landroid/net/wifi/nan/ConfigRequest;->mSupport5gBand:Z

    #@f
    iget-boolean v4, v0, Landroid/net/wifi/nan/ConfigRequest;->mSupport5gBand:Z

    #@11
    if-ne v3, v4, :cond_3

    #@13
    iget v3, p0, Landroid/net/wifi/nan/ConfigRequest;->mMasterPreference:I

    #@15
    iget v4, v0, Landroid/net/wifi/nan/ConfigRequest;->mMasterPreference:I

    #@17
    if-ne v3, v4, :cond_3

    #@19
    .line 133
    iget v3, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterLow:I

    #@1b
    iget v4, v0, Landroid/net/wifi/nan/ConfigRequest;->mClusterLow:I

    #@1d
    if-ne v3, v4, :cond_3

    #@1f
    iget v3, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterHigh:I

    #@21
    iget v4, v0, Landroid/net/wifi/nan/ConfigRequest;->mClusterHigh:I

    #@23
    if-ne v3, v4, :cond_2

    #@25
    .line 132
    :goto_0
    return v1

    #@26
    :cond_2
    move v1, v2

    #@27
    .line 133
    goto :goto_0

    #@28
    :cond_3
    move v1, v2

    #@29
    .line 132
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 140
    iget-boolean v1, p0, Landroid/net/wifi/nan/ConfigRequest;->mSupport5gBand:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const/4 v1, 0x1

    #@5
    :goto_0
    add-int/lit16 v0, v1, 0x20f

    #@7
    .line 141
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@9
    iget v2, p0, Landroid/net/wifi/nan/ConfigRequest;->mMasterPreference:I

    #@b
    add-int v0, v1, v2

    #@d
    .line 142
    mul-int/lit8 v1, v0, 0x1f

    #@f
    iget v2, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterLow:I

    #@11
    add-int v0, v1, v2

    #@13
    .line 143
    mul-int/lit8 v1, v0, 0x1f

    #@15
    iget v2, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterHigh:I

    #@17
    add-int v0, v1, v2

    #@19
    .line 145
    return v0

    #@1a
    .line 140
    .end local v0    # "result":I
    :cond_0
    const/4 v1, 0x0

    #@1b
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ConfigRequest [mSupport5gBand="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-boolean v1, p0, Landroid/net/wifi/nan/ConfigRequest;->mSupport5gBand:Z

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", mMasterPreference="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 87
    iget v1, p0, Landroid/net/wifi/nan/ConfigRequest;->mMasterPreference:I

    #@1b
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 87
    const-string/jumbo v1, ", mClusterLow="

    #@22
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 87
    iget v1, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterLow:I

    #@28
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 87
    const-string/jumbo v1, ", mClusterHigh="

    #@2f
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 88
    iget v1, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterHigh:I

    #@35
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 88
    const-string/jumbo v1, "]"

    #@3c
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/net/wifi/nan/ConfigRequest;->mSupport5gBand:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 99
    iget v0, p0, Landroid/net/wifi/nan/ConfigRequest;->mMasterPreference:I

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 100
    iget v0, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterLow:I

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 101
    iget v0, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterHigh:I

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 97
    return-void

    #@18
    .line 98
    :cond_0
    const/4 v0, 0x0

    #@19
    goto :goto_0
.end method
