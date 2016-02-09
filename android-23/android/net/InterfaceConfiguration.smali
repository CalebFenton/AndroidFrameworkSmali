.class public Landroid/net/InterfaceConfiguration;
.super Ljava/lang/Object;
.source "InterfaceConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/InterfaceConfiguration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/InterfaceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_DOWN:Ljava/lang/String; = "down"

.field private static final FLAG_UP:Ljava/lang/String; = "up"


# instance fields
.field private mAddr:Landroid/net/LinkAddress;

.field private mFlags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHwAddr:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/net/InterfaceConfiguration;)Ljava/util/HashSet;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/net/InterfaceConfiguration;Landroid/net/LinkAddress;)Landroid/net/LinkAddress;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/net/InterfaceConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 139
    new-instance v0, Landroid/net/InterfaceConfiguration$1;

    #@2
    invoke-direct {v0}, Landroid/net/InterfaceConfiguration$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    #@9
    .line 31
    return-void
.end method

.method private static validateFlag(Ljava/lang/String;)V
    .locals 3
    .param p0, "flag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 160
    const/16 v0, 0x20

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v0

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "flag contains space: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public clearFlag(Ljava/lang/String;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    invoke-static {p1}, Landroid/net/InterfaceConfiguration;->validateFlag(Ljava/lang/String;)V

    #@3
    .line 59
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@8
    .line 57
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 121
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getFlags()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    #@2
    return-object v0
.end method

.method public getHardwareAddress()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLinkAddress()Landroid/net/LinkAddress;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    #@2
    return-object v0
.end method

.method public hasFlag(Ljava/lang/String;)Z
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 53
    invoke-static {p1}, Landroid/net/InterfaceConfiguration;->validateFlag(Ljava/lang/String;)V

    #@3
    .line 54
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public isActive()Z
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 108
    :try_start_0
    const-string/jumbo v2, "up"

    #@4
    invoke-virtual {p0, v2}, Landroid/net/InterfaceConfiguration;->hasFlag(Ljava/lang/String;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 109
    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    #@c
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    #@13
    move-result-object v4

    #@14
    array-length v5, v4

    #@15
    move v2, v3

    #@16
    :goto_0
    if-ge v2, v5, :cond_1

    #@18
    aget-byte v0, v4, v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 110
    .local v0, "b":B
    if-eqz v0, :cond_0

    #@1c
    const/4 v2, 0x1

    #@1d
    return v2

    #@1e
    .line 109
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 113
    .end local v0    # "b":B
    :catch_0
    move-exception v1

    #@22
    .line 114
    .local v1, "e":Ljava/lang/NullPointerException;
    return v3

    #@23
    .line 116
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_1
    return v3
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    invoke-static {p1}, Landroid/net/InterfaceConfiguration;->validateFlag(Ljava/lang/String;)V

    #@3
    .line 64
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@8
    .line 62
    return-void
.end method

.method public setHardwareAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "hwAddr"    # Ljava/lang/String;

    #@0
    .prologue
    .line 96
    iput-object p1, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    #@2
    .line 95
    return-void
.end method

.method public setInterfaceDown()V
    .locals 2

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    #@2
    const-string/jumbo v1, "up"

    #@5
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@8
    .line 80
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    #@a
    const-string/jumbo v1, "down"

    #@d
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@10
    .line 78
    return-void
.end method

.method public setInterfaceUp()V
    .locals 2

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    #@2
    const-string/jumbo v1, "down"

    #@5
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@8
    .line 72
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    #@a
    const-string/jumbo v1, "up"

    #@d
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@10
    .line 70
    return-void
.end method

.method public setLinkAddress(Landroid/net/LinkAddress;)V
    .locals 0
    .param p1, "addr"    # Landroid/net/LinkAddress;

    #@0
    .prologue
    .line 88
    iput-object p1, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    #@2
    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 42
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mHwAddr="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 43
    const-string/jumbo v1, " mAddr="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    #@1a
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 44
    const-string/jumbo v1, " mFlags="

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 126
    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 127
    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 128
    const/4 v2, 0x1

    #@a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    #@d
    .line 129
    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    #@f
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@12
    .line 133
    :goto_0
    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    #@14
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    #@17
    move-result v2

    #@18
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 134
    iget-object v2, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    #@1d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v1

    #@21
    .local v1, "flag$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Ljava/lang/String;

    #@2d
    .line 135
    .local v0, "flag":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@30
    goto :goto_1

    #@31
    .line 131
    .end local v0    # "flag":Ljava/lang/String;
    .end local v1    # "flag$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    #@32
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    #@35
    goto :goto_0

    #@36
    .line 125
    .restart local v1    # "flag$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
