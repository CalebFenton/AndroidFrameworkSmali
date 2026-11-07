.class public final Landroid/telephony/AvailableNetworkInfo;
.super Ljava/lang/Object;
.source "AvailableNetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/AvailableNetworkInfo$Builder;,
        Landroid/telephony/AvailableNetworkInfo$AvailableNetworkInfoPriority;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/AvailableNetworkInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PRIORITY_HIGH:I = 0x1

.field public static final whitelist PRIORITY_LOW:I = 0x3

.field public static final whitelist PRIORITY_MED:I = 0x2


# instance fields
.field private blacklist mBands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist mMccMncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPriority:I

.field private blacklist mRadioAccessSpecifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSubId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 237
    new-instance v0, Landroid/telephony/AvailableNetworkInfo$1;

    invoke-direct {v0}, Landroid/telephony/AvailableNetworkInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/AvailableNetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IILjava/util/List;Ljava/util/List;)V
    .registers 11
    .param p1, "subId"    # I
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 195
    .local p3, "mccMncs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "bands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "subId":I
    .end local p2    # "priority":I
    .end local p3    # "mccMncs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "bands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v1, "subId":I
    .local v2, "priority":I
    .local v3, "mccMncs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "bands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {v0 .. v5}, Landroid/telephony/AvailableNetworkInfo;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 197
    return-void
.end method

.method private constructor blacklist <init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .param p1, "subId"    # I
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;)V"
        }
    .end annotation

    .line 202
    .local p3, "mccMncs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "bands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "radioAccessSpecifiers":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput p1, p0, Landroid/telephony/AvailableNetworkInfo;->mSubId:I

    .line 204
    iput p2, p0, Landroid/telephony/AvailableNetworkInfo;->mPriority:I

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/AvailableNetworkInfo;->mMccMncs:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/AvailableNetworkInfo;->mBands:Ljava/util/ArrayList;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/AvailableNetworkInfo;->mRadioAccessSpecifiers:Ljava/util/ArrayList;

    .line 208
    return-void
.end method

.method synthetic constructor blacklist <init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/telephony/AvailableNetworkInfo-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/telephony/AvailableNetworkInfo;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/AvailableNetworkInfo;->mSubId:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/AvailableNetworkInfo;->mPriority:I

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/AvailableNetworkInfo;->mMccMncs:Ljava/util/ArrayList;

    .line 186
    iget-object v0, p0, Landroid/telephony/AvailableNetworkInfo;->mMccMncs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/AvailableNetworkInfo;->mBands:Ljava/util/ArrayList;

    .line 188
    iget-object v0, p0, Landroid/telephony/AvailableNetworkInfo;->mBands:Ljava/util/ArrayList;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/AvailableNetworkInfo;->mRadioAccessSpecifiers:Ljava/util/ArrayList;

    .line 190
    iget-object v0, p0, Landroid/telephony/AvailableNetworkInfo;->mRadioAccessSpecifiers:Ljava/util/ArrayList;

    const-class v1, Landroid/telephony/RadioAccessSpecifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/RadioAccessSpecifier;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 191
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/AvailableNetworkInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/AvailableNetworkInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 215
    const/4 v0, 0x0

    :try_start_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/AvailableNetworkInfo;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_4} :catch_3c

    .line 218
    .local v1, "ani":Landroid/telephony/AvailableNetworkInfo;
    nop

    .line 220
    if-nez p1, :cond_8

    .line 221
    return v0

    .line 224
    :cond_8
    iget v2, p0, Landroid/telephony/AvailableNetworkInfo;->mSubId:I

    iget v3, v1, Landroid/telephony/AvailableNetworkInfo;->mSubId:I

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/telephony/AvailableNetworkInfo;->mPriority:I

    iget v3, v1, Landroid/telephony/AvailableNetworkInfo;->mPriority:I

    if-ne v2, v3, :cond_3a

    iget-object v2, p0, Landroid/telephony/AvailableNetworkInfo;->mMccMncs:Ljava/util/ArrayList;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Landroid/telephony/AvailableNetworkInfo;->mMccMncs:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/telephony/AvailableNetworkInfo;->mMccMncs:Ljava/util/ArrayList;

    .line 227
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Landroid/telephony/AvailableNetworkInfo;->mBands:Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/telephony/AvailableNetworkInfo;->mBands:Ljava/util/ArrayList;

    .line 228
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Landroid/telephony/AvailableNetworkInfo;->mRadioAccessSpecifiers:Ljava/util/ArrayList;

    .line 229
    invoke-virtual {v1}, Landroid/telephony/AvailableNetworkInfo;->getRadioAccessSpecifiers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v0, 0x1

    goto :goto_3b

    :cond_3a
    nop

    .line 224
    :goto_3b
    return v0

    .line 216
    .end local v1    # "ani":Landroid/telephony/AvailableNetworkInfo;
    :catch_3c
    move-exception v1

    .line 217
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public whitelist getBands()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Landroid/telephony/AvailableNetworkInfo;->mBands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMccMncs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Landroid/telephony/AvailableNetworkInfo;->mMccMncs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPriority()I
    .registers 2

    .line 131
    iget v0, p0, Landroid/telephony/AvailableNetworkInfo;->mPriority:I

    return v0
.end method

.method public whitelist getRadioAccessSpecifiers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Landroid/telephony/AvailableNetworkInfo;->mRadioAccessSpecifiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSubId()I
    .registers 2

    .line 117
    iget v0, p0, Landroid/telephony/AvailableNetworkInfo;->mSubId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 234
    iget v0, p0, Landroid/telephony/AvailableNetworkInfo;->mSubId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/AvailableNetworkInfo;->mPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/AvailableNetworkInfo;->mMccMncs:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/telephony/AvailableNetworkInfo;->mBands:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/telephony/AvailableNetworkInfo;->mRadioAccessSpecifiers:Ljava/util/ArrayList;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AvailableNetworkInfo: mSubId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/AvailableNetworkInfo;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPriority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/AvailableNetworkInfo;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMccMncs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/AvailableNetworkInfo;->mMccMncs:Ljava/util/ArrayList;

    .line 255
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBands: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/AvailableNetworkInfo;->mBands:Ljava/util/ArrayList;

    .line 256
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRadioAccessSpecifiers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/AvailableNetworkInfo;->mRadioAccessSpecifiers:Ljava/util/ArrayList;

    .line 257
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 175
    iget v0, p0, Landroid/telephony/AvailableNetworkInfo;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Landroid/telephony/AvailableNetworkInfo;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v0, p0, Landroid/telephony/AvailableNetworkInfo;->mMccMncs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 178
    iget-object v0, p0, Landroid/telephony/AvailableNetworkInfo;->mBands:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 179
    iget-object v0, p0, Landroid/telephony/AvailableNetworkInfo;->mRadioAccessSpecifiers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 180
    return-void
.end method
