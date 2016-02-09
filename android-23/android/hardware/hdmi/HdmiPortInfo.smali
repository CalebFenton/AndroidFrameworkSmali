.class public final Landroid/hardware/hdmi/HdmiPortInfo;
.super Ljava/lang/Object;
.source "HdmiPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiPortInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORT_INPUT:I = 0x0

.field public static final PORT_OUTPUT:I = 0x1


# instance fields
.field private final mAddress:I

.field private final mArcSupported:Z

.field private final mCecSupported:Z

.field private final mId:I

.field private final mMhlSupported:Z

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 130
    new-instance v0, Landroid/hardware/hdmi/HdmiPortInfo$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiPortInfo$1;-><init>()V

    #@5
    .line 129
    sput-object v0, Landroid/hardware/hdmi/HdmiPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>(IIIZZZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "address"    # I
    .param p4, "cec"    # Z
    .param p5, "mhl"    # Z
    .param p6, "arc"    # Z

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    iput p1, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    #@5
    .line 55
    iput p2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    #@7
    .line 56
    iput p3, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    #@9
    .line 57
    iput-boolean p4, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    #@b
    .line 58
    iput-boolean p6, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    #@d
    .line 59
    iput-boolean p5, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    #@f
    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 122
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 178
    instance-of v2, p1, Landroid/hardware/hdmi/HdmiPortInfo;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 179
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 181
    check-cast v0, Landroid/hardware/hdmi/HdmiPortInfo;

    #@9
    .line 182
    .local v0, "other":Landroid/hardware/hdmi/HdmiPortInfo;
    iget v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    #@b
    iget v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    iget v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    #@11
    iget v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    #@13
    if-ne v2, v3, :cond_1

    #@15
    iget v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    #@17
    iget v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    #@19
    if-ne v2, v3, :cond_1

    #@1b
    .line 183
    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    #@1d
    iget-boolean v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    #@1f
    if-ne v2, v3, :cond_1

    #@21
    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    #@23
    iget-boolean v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    #@25
    if-ne v2, v3, :cond_1

    #@27
    .line 184
    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    #@29
    iget-boolean v3, v0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    #@2b
    if-ne v2, v3, :cond_1

    #@2d
    const/4 v1, 0x1

    #@2e
    .line 182
    :cond_1
    return v1
.end method

.method public getAddress()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    #@2
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 68
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    #@2
    return v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 77
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    #@2
    return v0
.end method

.method public isArcSupported()Z
    .locals 1

    #@0
    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    #@2
    return v0
.end method

.method public isCecSupported()Z
    .locals 1

    #@0
    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    #@2
    return v0
.end method

.method public isMhlSupported()Z
    .locals 1

    #@0
    .prologue
    .line 104
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 168
    .local v0, "s":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "port_id: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, ", "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    .line 169
    const-string/jumbo v1, "address: "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, "0x%04x"

    #@22
    const/4 v3, 0x1

    #@23
    new-array v3, v3, [Ljava/lang/Object;

    #@25
    iget v4, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    #@27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v4

    #@2b
    const/4 v5, 0x0

    #@2c
    aput-object v4, v3, v5

    #@2e
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@35
    move-result-object v1

    #@36
    const-string/jumbo v2, ", "

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3c
    .line 170
    const-string/jumbo v1, "cec: "

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@42
    move-result-object v1

    #@43
    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    #@48
    move-result-object v1

    #@49
    const-string/jumbo v2, ", "

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4f
    .line 171
    const-string/jumbo v1, "arc: "

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@55
    move-result-object v1

    #@56
    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    #@5b
    move-result-object v1

    #@5c
    const-string/jumbo v2, ", "

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@62
    .line 172
    const-string/jumbo v1, "mhl: "

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@68
    move-result-object v1

    #@69
    iget-boolean v2, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    #@6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    #@6e
    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 157
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mId:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 158
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mType:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 159
    iget v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mAddress:I

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 160
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mCecSupported:Z

    #@13
    if-eqz v0, :cond_0

    #@15
    move v0, v1

    #@16
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 161
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mArcSupported:Z

    #@1b
    if-eqz v0, :cond_1

    #@1d
    move v0, v1

    #@1e
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 162
    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiPortInfo;->mMhlSupported:Z

    #@23
    if-eqz v0, :cond_2

    #@25
    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 156
    return-void

    #@29
    :cond_0
    move v0, v2

    #@2a
    .line 160
    goto :goto_0

    #@2b
    :cond_1
    move v0, v2

    #@2c
    .line 161
    goto :goto_1

    #@2d
    :cond_2
    move v1, v2

    #@2e
    .line 162
    goto :goto_2
.end method
