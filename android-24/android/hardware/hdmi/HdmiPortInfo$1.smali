.class final Landroid/hardware/hdmi/HdmiPortInfo$1;
.super Ljava/lang/Object;
.source "HdmiPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiPortInfo;
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
        "Landroid/hardware/hdmi/HdmiPortInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 8
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v1

    #@5
    .line 134
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v2

    #@9
    .line 135
    .local v2, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v3

    #@d
    .line 136
    .local v3, "address":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v0

    #@11
    if-ne v0, v7, :cond_0

    #@13
    const/4 v4, 0x1

    #@14
    .line 137
    .local v4, "cec":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v0

    #@18
    if-ne v0, v7, :cond_1

    #@1a
    const/4 v6, 0x1

    #@1b
    .line 138
    .local v6, "arc":Z
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    if-ne v0, v7, :cond_2

    #@21
    const/4 v5, 0x1

    #@22
    .line 139
    .local v5, "mhl":Z
    :goto_2
    new-instance v0, Landroid/hardware/hdmi/HdmiPortInfo;

    #@24
    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(IIIZZZ)V

    #@27
    return-object v0

    #@28
    .line 136
    .end local v4    # "cec":Z
    .end local v5    # "mhl":Z
    .end local v6    # "arc":Z
    :cond_0
    const/4 v4, 0x0

    #@29
    .restart local v4    # "cec":Z
    goto :goto_0

    #@2a
    .line 137
    :cond_1
    const/4 v6, 0x0

    #@2b
    .restart local v6    # "arc":Z
    goto :goto_1

    #@2c
    .line 138
    :cond_2
    const/4 v5, 0x0

    #@2d
    .restart local v5    # "mhl":Z
    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 132
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiPortInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiPortInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 144
    new-array v0, p1, [Landroid/hardware/hdmi/HdmiPortInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 143
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiPortInfo$1;->newArray(I)[Landroid/hardware/hdmi/HdmiPortInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
