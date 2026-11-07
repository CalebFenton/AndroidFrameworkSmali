.class Landroid/hardware/hdmi/HdmiPortInfo$1;
.super Ljava/lang/Object;
.source "HdmiPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiPortInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/hdmi/HdmiPortInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 11
    .param p1, "source"    # Landroid/os/Parcel;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .local v0, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 177
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .local v2, "address":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_16

    move v3, v5

    goto :goto_17

    :cond_16
    move v3, v4

    .line 179
    .local v3, "cec":Z
    :goto_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v5, :cond_1f

    move v6, v5

    goto :goto_20

    :cond_1f
    move v6, v4

    .line 180
    .local v6, "arc":Z
    :goto_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v5, :cond_28

    move v7, v5

    goto :goto_29

    :cond_28
    move v7, v4

    .line 181
    .local v7, "mhl":Z
    :goto_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v5, :cond_30

    move v4, v5

    .line 182
    .local v4, "earc":Z
    :cond_30
    new-instance v5, Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    invoke-direct {v5, v0, v1, v2}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;-><init>(III)V

    .line 183
    invoke-virtual {v5, v3}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setCecSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    move-result-object v5

    .line 184
    invoke-virtual {v5, v6}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setArcSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    move-result-object v5

    .line 185
    invoke-virtual {v5, v4}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setEarcSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    move-result-object v5

    .line 186
    invoke-virtual {v5, v7}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setMhlSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    move-result-object v5

    .line 187
    invoke-virtual {v5}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->build()Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v5

    .line 182
    return-object v5
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 172
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiPortInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 3
    .param p1, "size"    # I

    .line 192
    new-array v0, p1, [Landroid/hardware/hdmi/HdmiPortInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 172
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiPortInfo$1;->newArray(I)[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p1

    return-object p1
.end method
