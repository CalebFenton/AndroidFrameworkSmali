.class public Landroid/net/InterfaceConfiguration;
.super Ljava/lang/Object;
.source "InterfaceConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/InterfaceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final greylist-max-o FLAG_DOWN:Ljava/lang/String; = "down"

.field private static final greylist-max-o FLAG_UP:Ljava/lang/String; = "up"


# instance fields
.field private greylist-max-o mAddr:Landroid/net/LinkAddress;

.field private greylist-max-o mFlags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHwAddr:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/net/InterfaceConfiguration;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAddr(Landroid/net/InterfaceConfiguration;Landroid/net/LinkAddress;)V
    .registers 2

    iput-object p1, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHwAddr(Landroid/net/InterfaceConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/net/InterfaceConfiguration;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 164
    new-instance v0, Landroid/net/InterfaceConfiguration$1;

    invoke-direct {v0}, Landroid/net/InterfaceConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    .line 43
    return-void
.end method

.method private static greylist-max-o validateFlag(Ljava/lang/String;)V
    .registers 4
    .param p0, "flag"    # Ljava/lang/String;

    .line 185
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_9

    .line 188
    return-void

    .line 186
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flag contains space: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist clearFlag(Ljava/lang/String;)V
    .registers 3
    .param p1, "flag"    # Ljava/lang/String;

    .line 66
    invoke-static {p1}, Landroid/net/InterfaceConfiguration;->validateFlag(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getFlags()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    return-object v0
.end method

.method public greylist-max-o getHardwareAddress()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getLinkAddress()Landroid/net/LinkAddress;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    return-object v0
.end method

.method public greylist-max-o hasFlag(Ljava/lang/String;)Z
    .registers 3
    .param p1, "flag"    # Ljava/lang/String;

    .line 60
    invoke-static {p1}, Landroid/net/InterfaceConfiguration;->validateFlag(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o ignoreInterfaceUpDownStatus()V
    .registers 3

    .line 98
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    const-string/jumbo v1, "up"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public greylist-max-o isActive()Z
    .registers 6

    .line 128
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->isUp()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 129
    iget-object v1, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_13
    if-ge v3, v2, :cond_1e

    aget-byte v4, v1, v3
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_17} :catch_20

    .line 130
    .local v4, "b":B
    if-eqz v4, :cond_1b

    const/4 v0, 0x1

    return v0

    .line 129
    .end local v4    # "b":B
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 135
    :cond_1e
    nop

    .line 136
    return v0

    .line 133
    :catch_20
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/NullPointerException;
    return v0
.end method

.method public greylist-max-o isUp()Z
    .registers 2

    .line 140
    const-string/jumbo v0, "up"

    invoke-virtual {p0, v0}, Landroid/net/InterfaceConfiguration;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist setFlag(Ljava/lang/String;)V
    .registers 3
    .param p1, "flag"    # Ljava/lang/String;

    .line 72
    invoke-static {p1}, Landroid/net/InterfaceConfiguration;->validateFlag(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public greylist-max-o setHardwareAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "hwAddr"    # Ljava/lang/String;

    .line 116
    iput-object p1, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public greylist setInterfaceDown()V
    .registers 3

    .line 90
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    const-string/jumbo v1, "up"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public greylist setInterfaceUp()V
    .registers 3

    .line 81
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    const-string/jumbo v1, "up"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public greylist setLinkAddress(Landroid/net/LinkAddress;)V
    .registers 2
    .param p1, "addr"    # Landroid/net/LinkAddress;

    .line 108
    iput-object p1, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    .line 109
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mHwAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, " mAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, " mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 150
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    if-eqz v0, :cond_13

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 153
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_17

    .line 155
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 157
    :goto_17
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    .local v1, "flag":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    .end local v1    # "flag":Ljava/lang/String;
    goto :goto_26

    .line 161
    :cond_36
    return-void
.end method
