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

.field public mcVersion:I

.field public oneSidedRttSupported:Z

.field public preambleSupported:I

.field public responderSupported:Z

.field public secureRttSupported:Z

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
    .line 287
    new-instance v0, Landroid/net/wifi/RttManager$RttCapabilities$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/RttManager$RttCapabilities$1;-><init>()V

    #@5
    .line 286
    sput-object v0, Landroid/net/wifi/RttManager$RttCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 177
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 268
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 208
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "oneSidedRtt "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v2

    #@c
    .line 209
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    #@e
    if-eqz v1, :cond_9

    #@10
    const-string/jumbo v1, "is Supported. "

    #@13
    .line 208
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    move-result-object v1

    #@17
    .line 210
    const-string/jumbo v2, "twoSided11McRtt "

    #@1a
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1d
    move-result-object v2

    #@1e
    .line 211
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    #@20
    if-eqz v1, :cond_a

    #@22
    const-string/jumbo v1, "is Supported. "

    #@25
    .line 208
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@28
    move-result-object v1

    #@29
    .line 212
    const-string/jumbo v2, "lci "

    #@2c
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    move-result-object v2

    #@30
    .line 213
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    #@32
    if-eqz v1, :cond_b

    #@34
    const-string/jumbo v1, "is Supported. "

    #@37
    .line 208
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3a
    move-result-object v1

    #@3b
    .line 214
    const-string/jumbo v2, "lcr "

    #@3e
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@41
    move-result-object v2

    #@42
    .line 215
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    #@44
    if-eqz v1, :cond_c

    #@46
    const-string/jumbo v1, "is Supported. "

    #@49
    .line 208
    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4c
    .line 217
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    #@4e
    and-int/lit8 v1, v1, 0x1

    #@50
    if-eqz v1, :cond_0

    #@52
    .line 218
    const-string/jumbo v1, "Legacy "

    #@55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@58
    .line 221
    :cond_0
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    #@5a
    and-int/lit8 v1, v1, 0x2

    #@5c
    if-eqz v1, :cond_1

    #@5e
    .line 222
    const-string/jumbo v1, "HT "

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@64
    .line 225
    :cond_1
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    #@66
    and-int/lit8 v1, v1, 0x4

    #@68
    if-eqz v1, :cond_2

    #@6a
    .line 226
    const-string/jumbo v1, "VHT "

    #@6d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@70
    .line 229
    :cond_2
    const-string/jumbo v1, "is supported. "

    #@73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@76
    .line 231
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    #@78
    and-int/lit8 v1, v1, 0x1

    #@7a
    if-eqz v1, :cond_3

    #@7c
    .line 232
    const-string/jumbo v1, "5 MHz "

    #@7f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@82
    .line 235
    :cond_3
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    #@84
    and-int/lit8 v1, v1, 0x2

    #@86
    if-eqz v1, :cond_4

    #@88
    .line 236
    const-string/jumbo v1, "10 MHz "

    #@8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8e
    .line 239
    :cond_4
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    #@90
    and-int/lit8 v1, v1, 0x4

    #@92
    if-eqz v1, :cond_5

    #@94
    .line 240
    const-string/jumbo v1, "20 MHz "

    #@97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@9a
    .line 243
    :cond_5
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    #@9c
    and-int/lit8 v1, v1, 0x8

    #@9e
    if-eqz v1, :cond_6

    #@a0
    .line 244
    const-string/jumbo v1, "40 MHz "

    #@a3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a6
    .line 247
    :cond_6
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    #@a8
    and-int/lit8 v1, v1, 0x10

    #@aa
    if-eqz v1, :cond_7

    #@ac
    .line 248
    const-string/jumbo v1, "80 MHz "

    #@af
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b2
    .line 251
    :cond_7
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    #@b4
    and-int/lit8 v1, v1, 0x20

    #@b6
    if-eqz v1, :cond_8

    #@b8
    .line 252
    const-string/jumbo v1, "160 MHz "

    #@bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@be
    .line 255
    :cond_8
    const-string/jumbo v1, "is supported."

    #@c1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c4
    .line 257
    const-string/jumbo v1, " STA responder role is "

    #@c7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ca
    move-result-object v2

    #@cb
    .line 258
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    #@cd
    if-eqz v1, :cond_d

    #@cf
    const-string/jumbo v1, "supported"

    #@d2
    .line 257
    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d5
    .line 259
    const-string/jumbo v1, " Secure RTT protocol is "

    #@d8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@db
    move-result-object v2

    #@dc
    .line 260
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    #@de
    if-eqz v1, :cond_e

    #@e0
    const-string/jumbo v1, "supported"

    #@e3
    .line 259
    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e6
    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    const-string/jumbo v2, " 11mc version is "

    #@ee
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v1

    #@f2
    iget v2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    #@f4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v1

    #@f8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fb
    move-result-object v1

    #@fc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ff
    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@102
    move-result-object v1

    #@103
    return-object v1

    #@104
    .line 209
    :cond_9
    const-string/jumbo v1, "is not supported. "

    #@107
    goto/16 :goto_0

    #@109
    .line 211
    :cond_a
    const-string/jumbo v1, "is not supported. "

    #@10c
    goto/16 :goto_1

    #@10e
    .line 213
    :cond_b
    const-string/jumbo v1, "is not supported. "

    #@111
    goto/16 :goto_2

    #@113
    .line 215
    :cond_c
    const-string/jumbo v1, "is not supported. "

    #@116
    goto/16 :goto_3

    #@118
    .line 258
    :cond_d
    const-string/jumbo v1, "not supported"

    #@11b
    goto :goto_4

    #@11c
    .line 260
    :cond_e
    const-string/jumbo v1, "not supported"

    #@11f
    goto :goto_5
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
    .line 274
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 275
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    move v0, v1

    #@f
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 276
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    #@14
    if-eqz v0, :cond_2

    #@16
    move v0, v1

    #@17
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 277
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    #@1c
    if-eqz v0, :cond_3

    #@1e
    move v0, v1

    #@1f
    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 278
    iget v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    #@24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 279
    iget v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    #@29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 280
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    #@2e
    if-eqz v0, :cond_4

    #@30
    move v0, v1

    #@31
    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@34
    .line 281
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    #@36
    if-eqz v0, :cond_5

    #@38
    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 282
    iget v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    #@3d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@40
    .line 273
    return-void

    #@41
    :cond_0
    move v0, v2

    #@42
    .line 274
    goto :goto_0

    #@43
    :cond_1
    move v0, v2

    #@44
    .line 275
    goto :goto_1

    #@45
    :cond_2
    move v0, v2

    #@46
    .line 276
    goto :goto_2

    #@47
    :cond_3
    move v0, v2

    #@48
    .line 277
    goto :goto_3

    #@49
    :cond_4
    move v0, v2

    #@4a
    .line 280
    goto :goto_4

    #@4b
    :cond_5
    move v1, v2

    #@4c
    .line 281
    goto :goto_5
.end method
