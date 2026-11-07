.class public final Landroid/telephony/data/RouteSelectionDescriptor;
.super Ljava/lang/Object;
.source "RouteSelectionDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/RouteSelectionDescriptor$RouteSscMode;,
        Landroid/telephony/data/RouteSelectionDescriptor$RouteSessionType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/RouteSelectionDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MAX_ROUTE_PRECEDENCE:I = 0xff

.field public static final blacklist MAX_ROUTE_SSC_MODE:I = 0x3

.field public static final blacklist MIN_ROUTE_PRECEDENCE:I = 0x0

.field public static final blacklist MIN_ROUTE_SSC_MODE:I = 0x1

.field public static final whitelist ROUTE_SSC_MODE_1:I = 0x1

.field public static final whitelist ROUTE_SSC_MODE_2:I = 0x2

.field public static final whitelist ROUTE_SSC_MODE_3:I = 0x3

.field public static final whitelist SESSION_TYPE_IPV4:I = 0x0

.field public static final whitelist SESSION_TYPE_IPV4V6:I = 0x2

.field public static final whitelist SESSION_TYPE_IPV6:I = 0x1


# instance fields
.field private final blacklist mDnn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPrecedence:I

.field private final blacklist mSessionType:I

.field private final blacklist mSliceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/NetworkSliceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSscMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 200
    new-instance v0, Landroid/telephony/data/RouteSelectionDescriptor$1;

    invoke-direct {v0}, Landroid/telephony/data/RouteSelectionDescriptor$1;-><init>()V

    sput-object v0, Landroid/telephony/data/RouteSelectionDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIILjava/util/List;Ljava/util/List;)V
    .registers 7
    .param p1, "precedence"    # I
    .param p2, "sessionType"    # I
    .param p3, "sscMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroid/telephony/data/NetworkSliceInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p4, "sliceInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/NetworkSliceInfo;>;"
    .local p5, "dnn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mPrecedence:I

    .line 126
    iput p2, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSessionType:I

    .line 127
    iput p3, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSscMode:I

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSliceInfo:Ljava/util/List;

    .line 129
    iget-object v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSliceInfo:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mDnn:Ljava/util/List;

    .line 131
    iget-object v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mDnn:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mPrecedence:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSessionType:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSscMode:I

    .line 138
    sget-object v0, Landroid/telephony/data/NetworkSliceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSliceInfo:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mDnn:Ljava/util/List;

    .line 140
    iget-object v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mDnn:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 141
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/RouteSelectionDescriptor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/RouteSelectionDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 220
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 221
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5a

    .line 222
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/RouteSelectionDescriptor;

    .line 223
    .local v2, "that":Landroid/telephony/data/RouteSelectionDescriptor;
    iget v3, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mPrecedence:I

    iget v4, v2, Landroid/telephony/data/RouteSelectionDescriptor;->mPrecedence:I

    if-ne v3, v4, :cond_58

    iget v3, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSessionType:I

    iget v4, v2, Landroid/telephony/data/RouteSelectionDescriptor;->mSessionType:I

    if-ne v3, v4, :cond_58

    iget v3, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSscMode:I

    iget v4, v2, Landroid/telephony/data/RouteSelectionDescriptor;->mSscMode:I

    if-ne v3, v4, :cond_58

    iget-object v3, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSliceInfo:Ljava/util/List;

    .line 226
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/telephony/data/RouteSelectionDescriptor;->mSliceInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_58

    iget-object v3, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSliceInfo:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/data/RouteSelectionDescriptor;->mSliceInfo:Ljava/util/List;

    .line 227
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v3, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mDnn:Ljava/util/List;

    .line 228
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/telephony/data/RouteSelectionDescriptor;->mDnn:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_58

    iget-object v3, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mDnn:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/data/RouteSelectionDescriptor;->mDnn:Ljava/util/List;

    .line 229
    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_58

    goto :goto_59

    :cond_58
    move v0, v1

    .line 223
    :goto_59
    return v0

    .line 221
    .end local v2    # "that":Landroid/telephony/data/RouteSelectionDescriptor;
    :cond_5a
    :goto_5a
    return v1
.end method

.method public whitelist getDataNetworkName()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mDnn:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPrecedence()I
    .registers 2

    .line 149
    iget v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mPrecedence:I

    return v0
.end method

.method public whitelist getSessionType()I
    .registers 2

    .line 159
    iget v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSessionType:I

    return v0
.end method

.method public whitelist getSliceInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/data/NetworkSliceInfo;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSliceInfo:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSscMode()I
    .registers 2

    .line 169
    iget v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSscMode:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 234
    iget v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mPrecedence:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSessionType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSscMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSliceInfo:Ljava/util/List;

    iget-object v4, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mDnn:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{.precedence = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mPrecedence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", .sessionType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSessionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", .sscMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSscMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", .sliceInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSliceInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", .dnn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mDnn:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 193
    iget v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mPrecedence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSessionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSscMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mSliceInfo:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 197
    iget-object v0, p0, Landroid/telephony/data/RouteSelectionDescriptor;->mDnn:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 198
    return-void
.end method
