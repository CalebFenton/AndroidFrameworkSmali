.class public final Landroid/telephony/CarrierInfo;
.super Ljava/lang/Object;
.source "CarrierInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CarrierInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mEhplmn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGid1:Ljava/lang/String;

.field private blacklist mGid2:Ljava/lang/String;

.field private blacklist mIccid:Ljava/lang/String;

.field private blacklist mImpi:Ljava/lang/String;

.field private blacklist mImsiPrefix:Ljava/lang/String;

.field private blacklist mMcc:Ljava/lang/String;

.field private blacklist mMnc:Ljava/lang/String;

.field private blacklist mSpn:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Landroid/telephony/CarrierInfo$1;

    invoke-direct {v0}, Landroid/telephony/CarrierInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/CarrierInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/CarrierInfo;->mEhplmn:Ljava/util/List;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CarrierInfo;->mMcc:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CarrierInfo;->mMnc:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CarrierInfo;->mSpn:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CarrierInfo;->mGid1:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CarrierInfo;->mGid2:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CarrierInfo;->mImsiPrefix:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CarrierInfo;->mIccid:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CarrierInfo;->mImpi:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mEhplmn:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 214
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "gid1"    # Ljava/lang/String;
    .param p5, "gid2"    # Ljava/lang/String;
    .param p6, "imsi"    # Ljava/lang/String;
    .param p7, "iccid"    # Ljava/lang/String;
    .param p8, "impi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p9, "plmnArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Landroid/telephony/CarrierInfo;->mMcc:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Landroid/telephony/CarrierInfo;->mMnc:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Landroid/telephony/CarrierInfo;->mSpn:Ljava/lang/String;

    .line 157
    iput-object p4, p0, Landroid/telephony/CarrierInfo;->mGid1:Ljava/lang/String;

    .line 158
    iput-object p5, p0, Landroid/telephony/CarrierInfo;->mGid2:Ljava/lang/String;

    .line 159
    iput-object p6, p0, Landroid/telephony/CarrierInfo;->mImsiPrefix:Ljava/lang/String;

    .line 160
    iput-object p7, p0, Landroid/telephony/CarrierInfo;->mIccid:Ljava/lang/String;

    .line 161
    iput-object p8, p0, Landroid/telephony/CarrierInfo;->mImpi:Ljava/lang/String;

    .line 162
    iput-object p9, p0, Landroid/telephony/CarrierInfo;->mEhplmn:Ljava/util/List;

    .line 163
    return-void
.end method

.method private blacklist getEhplmn_toString()Ljava/lang/String;
    .registers 3

    .line 228
    const-string v0, "  "

    iget-object v1, p0, Landroid/telephony/CarrierInfo;->mEhplmn:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPrintableImsi()Ljava/lang/String;
    .registers 6

    .line 232
    const-string v0, "CarrierInfo"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 233
    .local v0, "enablePiiLog":Z
    iget-object v1, p0, Landroid/telephony/CarrierInfo;->mImsiPrefix:Ljava/lang/String;

    if-eqz v1, :cond_37

    iget-object v1, p0, Landroid/telephony/CarrierInfo;->mImsiPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_37

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/telephony/CarrierInfo;->mImsiPrefix:Ljava/lang/String;

    .line 233
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/telephony/CarrierInfo;->mImsiPrefix:Ljava/lang/String;

    .line 234
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    :cond_37
    iget-object v1, p0, Landroid/telephony/CarrierInfo;->mImsiPrefix:Ljava/lang/String;

    .line 233
    :goto_39
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEhplmn()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mEhplmn:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getGid1()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mGid1:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGid2()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mGid2:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIccid()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mIccid:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getImpi()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mImpi:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getImsiPrefix()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mImsiPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMcc()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mMcc:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMnc()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mMnc:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSpn()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mSpn:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarrierInfo MCC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CarrierInfo;->mMcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   MNC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CarrierInfo;->mMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  SPN = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CarrierInfo;->mSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   GID1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CarrierInfo;->mGid1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   GID2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CarrierInfo;->mGid2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   IMSI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    invoke-direct {p0}, Landroid/telephony/CarrierInfo;->getPrintableImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   ICCID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CarrierInfo;->mIccid:Ljava/lang/String;

    .line 223
    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  IMPI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CarrierInfo;->mImpi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  EHPLMN = [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 224
    invoke-direct {p0}, Landroid/telephony/CarrierInfo;->getEhplmn_toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 191
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mSpn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mGid1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mGid2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mImsiPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mIccid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mImpi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Landroid/telephony/CarrierInfo;->mEhplmn:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 200
    return-void
.end method
