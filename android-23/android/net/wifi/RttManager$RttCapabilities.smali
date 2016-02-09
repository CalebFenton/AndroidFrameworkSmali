.class public Landroid/net/wifi/RttManager$RttCapabilities;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RttCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/RttManager$RttCapabilities$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/RttManager$RttCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bwSupported:I

.field public lciSupported:Z

.field public lcrSupported:Z

.field public oneSidedRttSupported:Z

.field public preambleSupported:I

.field public supportedPeerType:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public supportedType:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public twoSided11McRttSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 269
    new-instance v0, Landroid/net/wifi/RttManager$RttCapabilities$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/RttManager$RttCapabilities$1;-><init>()V

    #@5
    .line 268
    sput-object v0, Landroid/net/wifi/RttManager$RttCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 175
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 252
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 198
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "oneSidedRtt "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v2

    #@c
    .line 199
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    #@e
    if-eqz v1, :cond_9

    #@10
    const-string/jumbo v1, "is Supported. "

    #@13
    .line 198
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    move-result-object v1

    #@17
    .line 200
    const-string/jumbo v2, "twoSided11McRtt "

    #@1a
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1d
    move-result-object v2

    #@1e
    .line 201
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    #@20
    if-eqz v1, :cond_a

    #@22
    const-string/jumbo v1, "is Supported. "

    #@25
    .line 198
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@28
    move-result-object v1

    #@29
    .line 202
    const-string/jumbo v2, "lci "

    #@2c
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    move-result-object v2

    #@30
    .line 203
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    #@32
    if-eqz v1, :cond_b

    #@34
    const-string/jumbo v1, "is Supported. "

    #@37
    .line 198
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3a
    move-result-object v1

    #@3b
    .line 204
    const-string/jumbo v2, "lcr "

    #@3e
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@41
    move-result-object v2

    #@42
    .line 205
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    #@44
    if-eqz v1, :cond_c

    #@46
    const-string/jumbo v1, "is Supported. "

    #@49
    .line 198
    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4c
    .line 207
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    #@4e
    and-int/lit8 v1, v1, 0x1

    #@50
    if-eqz v1, :cond_0

    #@52
    .line 208
    const-string/jumbo v1, "Legacy "

    #@55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@58
    .line 211
    :cond_0
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    #@5a
    and-int/lit8 v1, v1, 0x2

    #@5c
    if-eqz v1, :cond_1

    #@5e
    .line 212
    const-string/jumbo v1, "HT "

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@64
    .line 215
    :cond_1
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    #@66
    and-int/lit8 v1, v1, 0x4

    #@68
    if-eqz v1, :cond_2

    #@6a
    .line 216
    const-string/jumbo v1, "VHT "

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@70
    .line 219
    :cond_2
    const-string/jumbo v1, "is supported. \n"

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@76
    .line 221
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    #@78
    and-int/lit8 v1, v1, 0x1

    #@7a
    if-eqz v1, :cond_3

    #@7c
    .line 222
    const-string/jumbo v1, "5 MHz "

    #@7f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@82
    .line 225
    :cond_3
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    #@84
    and-int/lit8 v1, v1, 0x2

    #@86
    if-eqz v1, :cond_4

    #@88
    .line 226
    const-string/jumbo v1, "10 MHz "

    #@8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8e
    .line 229
    :cond_4
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    #@90
    and-int/lit8 v1, v1, 0x4

    #@92
    if-eqz v1, :cond_5

    #@94
    .line 230
    const-string/jumbo v1, "20 MHz "

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9a
    .line 233
    :cond_5
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    #@9c
    and-int/lit8 v1, v1, 0x8

    #@9e
    if-eqz v1, :cond_6

    #@a0
    .line 234
    const-string/jumbo v1, "40 MHz "

    #@a3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a6
    .line 237
    :cond_6
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    #@a8
    and-int/lit8 v1, v1, 0x10

    #@aa
    if-eqz v1, :cond_7

    #@ac
    .line 238
    const-string/jumbo v1, "80 MHz "

    #@af
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b2
    .line 241
    :cond_7
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    #@b4
    and-int/lit8 v1, v1, 0x20

    #@b6
    if-eqz v1, :cond_8

    #@b8
    .line 242
    const-string/jumbo v1, "160 MHz "

    #@bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@be
    .line 245
    :cond_8
    const-string/jumbo v1, "is supported."

    #@c1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c4
    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c7
    move-result-object v1

    #@c8
    return-object v1

    #@c9
    .line 199
    :cond_9
    const-string/jumbo v1, "is not supported. "

    #@cc
    goto/16 :goto_0

    #@ce
    .line 201
    :cond_a
    const-string/jumbo v1, "is not supported. "

    #@d1
    goto/16 :goto_1

    #@d3
    .line 203
    :cond_b
    const-string/jumbo v1, "is not supported. "

    #@d6
    goto/16 :goto_2

    #@d8
    .line 205
    :cond_c
    const-string/jumbo v1, "is not supported. "

    #@db
    goto/16 :goto_3
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
    .line 258
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 259
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    move v0, v1

    #@f
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 260
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    move v0, v1

    #@17
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 261
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    #@1c
    if-eqz v0, :cond_3

    #@1e
    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 262
    iget v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 263
    iget v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    #@28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 257
    return-void

    #@2c
    :cond_0
    move v0, v2

    #@2d
    .line 258
    goto :goto_0

    #@2e
    :cond_1
    move v0, v2

    #@2f
    .line 259
    goto :goto_1

    #@30
    :cond_2
    move v0, v2

    #@31
    .line 260
    goto :goto_2

    #@32
    :cond_3
    move v1, v2

    #@33
    .line 261
    goto :goto_3
.end method
