.class public final Landroid/net/connectivity/android/net/MulticastRoutingConfig;
.super Ljava/lang/Object;
.source "MulticastRoutingConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/android/net/MulticastRoutingConfig$Builder;,
        Landroid/net/connectivity/android/net/MulticastRoutingConfig$MulticastForwardingMode;
    }
.end annotation


# static fields
.field public static final blacklist CONFIG_FORWARD_NONE:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/connectivity/android/net/MulticastRoutingConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FORWARD_NONE:I = 0x0

.field public static final blacklist FORWARD_SELECTED:I = 0x1

.field public static final blacklist FORWARD_WITH_MIN_SCOPE:I = 0x2

.field public static final blacklist MULTICAST_SCOPE_NONE:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mForwardingMode:I

.field private final blacklist mListeningAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMinScope:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smmodeToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->modeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 46
    const-class v0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->TAG:Ljava/lang/String;

    .line 76
    new-instance v0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/net/connectivity/android/net/MulticastRoutingConfig;-><init>(IILjava/util/Set;)V

    sput-object v0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->CONFIG_FORWARD_NONE:Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    .line 156
    new-instance v0, Landroid/net/connectivity/android/net/MulticastRoutingConfig$1;

    invoke-direct {v0}, Landroid/net/connectivity/android/net/MulticastRoutingConfig$1;-><init>()V

    sput-object v0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IILjava/util/Set;)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "scope"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p3, "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mForwardingMode:I

    .line 90
    iput p2, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mMinScope:I

    .line 91
    if-eqz p3, :cond_15

    .line 92
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mListeningAddresses:Ljava/util/Set;

    goto :goto_1b

    .line 94
    :cond_15
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mListeningAddresses:Ljava/util/Set;

    .line 96
    :goto_1b
    return-void
.end method

.method synthetic constructor blacklist <init>(IILjava/util/Set;Landroid/net/connectivity/android/net/MulticastRoutingConfig-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/net/connectivity/android/net/MulticastRoutingConfig;-><init>(IILjava/util/Set;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mForwardingMode:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mMinScope:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 127
    .local v0, "count":I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 128
    .local v1, "listeningAddresses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/net/Inet6Address;>;"
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 129
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    if-ge v3, v0, :cond_4c

    .line 130
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 132
    :try_start_22
    invoke-static {v2}, Ljava/net/Inet6Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    check-cast v4, Ljava/net/Inet6Address;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/net/UnknownHostException; {:try_start_22 .. :try_end_2b} :catch_2c

    .line 135
    goto :goto_49

    .line 133
    :catch_2c
    move-exception v4

    .line 134
    .local v4, "e":Ljava/net/UnknownHostException;
    sget-object v5, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t read inet6address : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v4    # "e":Ljava/net/UnknownHostException;
    :goto_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 137
    .end local v3    # "i":I
    :cond_4c
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mListeningAddresses:Ljava/util/Set;

    .line 138
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/connectivity/android/net/MulticastRoutingConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/connectivity/android/net/MulticastRoutingConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist forwardingModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "forwardingMode"    # I

    .line 169
    packed-switch p0, :pswitch_data_10

    .line 173
    const-string v0, "UNKNOWN"

    return-object v0

    .line 172
    :pswitch_6
    const-string v0, "WITH_MIN_SCOPE"

    return-object v0

    .line 171
    :pswitch_9
    const-string v0, "SELECTED"

    return-object v0

    .line 170
    :pswitch_c
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist modeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "mode"    # I

    .line 291
    packed-switch p0, :pswitch_data_20

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown multicast routing mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 294
    :pswitch_17
    const-string v0, "FORWARD_WITH_MIN_SCOPE"

    return-object v0

    .line 293
    :pswitch_1a
    const-string v0, "FORWARD_SELECTED"

    return-object v0

    .line 292
    :pswitch_1d
    const-string v0, "FORWARD_NONE"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 300
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 301
    return v0

    .line 302
    :cond_4
    instance-of v1, p1, Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 303
    return v2

    .line 305
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/connectivity/android/net/MulticastRoutingConfig;

    .line 306
    .local v1, "otherConfig":Landroid/net/connectivity/android/net/MulticastRoutingConfig;
    iget v3, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mForwardingMode:I

    iget v4, v1, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mForwardingMode:I

    if-ne v3, v4, :cond_24

    iget v3, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mMinScope:I

    iget v4, v1, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mMinScope:I

    if-ne v3, v4, :cond_24

    iget-object v3, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mListeningAddresses:Ljava/util/Set;

    iget-object v4, v1, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mListeningAddresses:Ljava/util/Set;

    .line 308
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    .line 306
    :goto_25
    return v0
.end method

.method public blacklist getForwardingMode()I
    .registers 2

    .line 103
    iget v0, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mForwardingMode:I

    return v0
.end method

.method public blacklist getListeningAddresses()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mListeningAddresses:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getMinimumScope()I
    .registers 2

    .line 111
    iget v0, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mMinScope:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 313
    iget v0, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mForwardingMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mMinScope:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mListeningAddresses:Ljava/util/Set;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 317
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, " "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 319
    .local v0, "resultJoiner":Ljava/util/StringJoiner;
    const-string v1, "ForwardingMode:"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 320
    iget v1, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mForwardingMode:I

    invoke-static {v1}, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 322
    iget v1, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mForwardingMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2c

    .line 323
    const-string v1, "MinScope:"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 324
    iget v1, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mMinScope:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 327
    :cond_2c
    iget v1, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mForwardingMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4e

    iget-object v1, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mListeningAddresses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 328
    const-string v1, "ListeningAddresses: ["

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 329
    const-string v1, ","

    iget-object v2, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mListeningAddresses:Ljava/util/Set;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 330
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 333
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 142
    iget v0, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mForwardingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mMinScope:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mListeningAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object v0, p0, Landroid/net/connectivity/android/net/MulticastRoutingConfig;->mListeningAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    .line 146
    .local v1, "addr":Ljava/net/Inet6Address;
    invoke-virtual {v1}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 147
    .end local v1    # "addr":Ljava/net/Inet6Address;
    goto :goto_19

    .line 148
    :cond_2d
    return-void
.end method
