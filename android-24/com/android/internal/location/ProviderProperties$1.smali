.class final Lcom/android/internal/location/ProviderProperties$1;
.super Ljava/lang/Object;
.source "ProviderProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/ProviderProperties;
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
        "Lcom/android/internal/location/ProviderProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderProperties;
    .locals 11
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v0

    #@5
    if-ne v0, v10, :cond_0

    #@7
    const/4 v1, 0x1

    #@8
    .line 117
    .local v1, "requiresNetwork":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v0

    #@c
    if-ne v0, v10, :cond_1

    #@e
    const/4 v2, 0x1

    #@f
    .line 118
    .local v2, "requiresSatellite":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    if-ne v0, v10, :cond_2

    #@15
    const/4 v3, 0x1

    #@16
    .line 119
    .local v3, "requiresCell":Z
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    if-ne v0, v10, :cond_3

    #@1c
    const/4 v4, 0x1

    #@1d
    .line 120
    .local v4, "hasMonetaryCost":Z
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v0

    #@21
    if-ne v0, v10, :cond_4

    #@23
    const/4 v5, 0x1

    #@24
    .line 121
    .local v5, "supportsAltitude":Z
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v0

    #@28
    if-ne v0, v10, :cond_5

    #@2a
    const/4 v6, 0x1

    #@2b
    .line 122
    .local v6, "supportsSpeed":Z
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v0

    #@2f
    if-ne v0, v10, :cond_6

    #@31
    const/4 v7, 0x1

    #@32
    .line 123
    .local v7, "supportsBearing":Z
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v8

    #@36
    .line 124
    .local v8, "powerRequirement":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v9

    #@3a
    .line 125
    .local v9, "accuracy":I
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    #@3c
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    #@3f
    return-object v0

    #@40
    .line 116
    .end local v1    # "requiresNetwork":Z
    .end local v2    # "requiresSatellite":Z
    .end local v3    # "requiresCell":Z
    .end local v4    # "hasMonetaryCost":Z
    .end local v5    # "supportsAltitude":Z
    .end local v6    # "supportsSpeed":Z
    .end local v7    # "supportsBearing":Z
    .end local v8    # "powerRequirement":I
    .end local v9    # "accuracy":I
    :cond_0
    const/4 v1, 0x0

    #@41
    .restart local v1    # "requiresNetwork":Z
    goto :goto_0

    #@42
    .line 117
    :cond_1
    const/4 v2, 0x0

    #@43
    .restart local v2    # "requiresSatellite":Z
    goto :goto_1

    #@44
    .line 118
    :cond_2
    const/4 v3, 0x0

    #@45
    .restart local v3    # "requiresCell":Z
    goto :goto_2

    #@46
    .line 119
    :cond_3
    const/4 v4, 0x0

    #@47
    .restart local v4    # "hasMonetaryCost":Z
    goto :goto_3

    #@48
    .line 120
    :cond_4
    const/4 v5, 0x0

    #@49
    .restart local v5    # "supportsAltitude":Z
    goto :goto_4

    #@4a
    .line 121
    :cond_5
    const/4 v6, 0x0

    #@4b
    .restart local v6    # "supportsSpeed":Z
    goto :goto_5

    #@4c
    .line 122
    :cond_6
    const/4 v7, 0x0

    #@4d
    .restart local v7    # "supportsBearing":Z
    goto :goto_6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderProperties$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderProperties;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/location/ProviderProperties;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 131
    new-array v0, p1, [Lcom/android/internal/location/ProviderProperties;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderProperties$1;->newArray(I)[Lcom/android/internal/location/ProviderProperties;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
