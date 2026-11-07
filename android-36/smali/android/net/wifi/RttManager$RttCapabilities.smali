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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/RttManager$RttCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist bwSupported:I

.field public whitelist lciSupported:Z

.field public whitelist lcrSupported:Z

.field public whitelist mcVersion:I

.field public whitelist oneSidedRttSupported:Z

.field public whitelist preambleSupported:I

.field public whitelist responderSupported:Z

.field public whitelist secureRttSupported:Z

.field public whitelist supportedPeerType:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist supportedType:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist twoSided11McRttSupported:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 296
    new-instance v0, Landroid/net/wifi/RttManager$RttCapabilities$1;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$RttCapabilities$1;-><init>()V

    sput-object v0, Landroid/net/wifi/RttManager$RttCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 217
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "oneSidedRtt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 219
    iget-boolean v2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    const-string v3, "is Supported. "

    const-string v4, "is not supported. "

    if-eqz v2, :cond_15

    move-object v2, v3

    goto :goto_16

    :cond_15
    move-object v2, v4

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 220
    const-string v2, "twoSided11McRtt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 221
    iget-boolean v2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    if-eqz v2, :cond_26

    move-object v2, v3

    goto :goto_27

    :cond_26
    move-object v2, v4

    :goto_27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 222
    const-string v2, "lci "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 223
    iget-boolean v2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    if-eqz v2, :cond_37

    move-object v2, v3

    goto :goto_38

    :cond_37
    move-object v2, v4

    :goto_38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 224
    const-string v2, "lcr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 225
    iget-boolean v2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    if-eqz v2, :cond_47

    goto :goto_48

    :cond_47
    move-object v3, v4

    :goto_48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_56

    .line 228
    const-string v1, "Legacy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    :cond_56
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_61

    .line 232
    const-string v1, "HT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    :cond_61
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6c

    .line 236
    const-string v1, "VHT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    :cond_6c
    const-string v1, "is supported. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7c

    .line 242
    const-string v1, "5 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    :cond_7c
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_87

    .line 246
    const-string v1, "10 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    :cond_87
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_92

    .line 250
    const-string v1, "20 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    :cond_92
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9d

    .line 254
    const-string v1, "40 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    :cond_9d
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a8

    .line 258
    const-string v1, "80 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    :cond_a8
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_b3

    .line 262
    const-string v1, "160 MHz "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    :cond_b3
    const-string v1, "is supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    const-string v1, " STA responder role is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 268
    iget-boolean v2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    const-string v3, "supported"

    const-string v4, "not supported"

    if-eqz v2, :cond_c8

    move-object v2, v3

    goto :goto_c9

    :cond_c8
    move-object v2, v4

    :goto_c9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    const-string v1, " Secure RTT protocol is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 270
    iget-boolean v2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    if-eqz v2, :cond_d7

    goto :goto_d8

    :cond_d7
    move-object v3, v4

    :goto_d8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " 11mc version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 284
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    return-void
.end method
