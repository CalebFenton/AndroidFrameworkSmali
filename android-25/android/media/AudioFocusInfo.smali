.class public final Landroid/media/AudioFocusInfo;
.super Ljava/lang/Object;
.source "AudioFocusInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFocusInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/AudioFocusInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttributes:Landroid/media/AudioAttributes;

.field private mClientId:Ljava/lang/String;

.field private mFlags:I

.field private mGainRequest:I

.field private mLossReceived:I

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 159
    new-instance v0, Landroid/media/AudioFocusInfo$1;

    #@2
    invoke-direct {v0}, Landroid/media/AudioFocusInfo$1;-><init>()V

    #@5
    .line 158
    sput-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "gainRequest"    # I
    .param p5, "lossReceived"    # I
    .param p6, "flags"    # I

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    if-nez p1, :cond_0

    #@5
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@7
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@a
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@d
    move-result-object p1

    #@e
    .end local p1    # "aa":Landroid/media/AudioAttributes;
    :cond_0
    iput-object p1, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    #@10
    .line 53
    if-nez p2, :cond_1

    #@12
    const-string/jumbo p2, ""

    #@15
    .end local p2    # "clientId":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    #@17
    .line 54
    if-nez p3, :cond_2

    #@19
    const-string/jumbo p3, ""

    #@1c
    .end local p3    # "packageName":Ljava/lang/String;
    :cond_2
    iput-object p3, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    #@1e
    .line 55
    iput p4, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    #@20
    .line 56
    iput p5, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    #@22
    .line 57
    iput p6, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    #@24
    .line 51
    return-void
.end method


# virtual methods
.method public clearLossReceived()V
    .locals 1

    #@0
    .prologue
    .line 95
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    #@3
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 108
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 130
    if-ne p0, p1, :cond_0

    #@4
    .line 131
    return v4

    #@5
    .line 132
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 133
    return v3

    #@8
    .line 134
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioFocusInfo;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 135
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 136
    check-cast v0, Landroid/media/AudioFocusInfo;

    #@16
    .line 137
    .local v0, "other":Landroid/media/AudioFocusInfo;
    iget-object v1, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    #@18
    iget-object v2, v0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    #@1a
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_3

    #@20
    .line 138
    return v3

    #@21
    .line 140
    :cond_3
    iget-object v1, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    #@23
    iget-object v2, v0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_4

    #@2b
    .line 141
    return v3

    #@2c
    .line 143
    :cond_4
    iget-object v1, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    #@2e
    iget-object v2, v0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v1

    #@34
    if-nez v1, :cond_5

    #@36
    .line 144
    return v3

    #@37
    .line 146
    :cond_5
    iget v1, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    #@39
    iget v2, v0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    #@3b
    if-eq v1, v2, :cond_6

    #@3d
    .line 147
    return v3

    #@3e
    .line 149
    :cond_6
    iget v1, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    #@40
    iget v2, v0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    #@42
    if-eq v1, v2, :cond_7

    #@44
    .line 150
    return v3

    #@45
    .line 152
    :cond_7
    iget v1, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    #@47
    iget v2, v0, Landroid/media/AudioFocusInfo;->mFlags:I

    #@49
    if-eq v1, v2, :cond_8

    #@4b
    .line 153
    return v3

    #@4c
    .line 155
    :cond_8
    return v4
.end method

.method public getAttributes()Landroid/media/AudioAttributes;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    #@2
    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 104
    iget v0, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    #@2
    return v0
.end method

.method public getGainRequest()I
    .locals 1

    #@0
    .prologue
    .line 82
    iget v0, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    #@2
    return v0
.end method

.method public getLossReceived()I
    .locals 1

    #@0
    .prologue
    .line 92
    iget v0, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    #@2
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 124
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget-object v1, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    iget-object v1, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    iget-object v1, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    #@f
    const/4 v2, 0x2

    #@10
    aput-object v1, v0, v2

    #@12
    iget v1, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    #@14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    iget v1, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    #@1d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v1

    #@21
    const/4 v2, 0x4

    #@22
    aput-object v1, v0, v2

    #@24
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@27
    move-result v0

    #@28
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 114
    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 115
    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 116
    iget v0, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 117
    iget v0, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 118
    iget v0, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 112
    return-void
.end method
