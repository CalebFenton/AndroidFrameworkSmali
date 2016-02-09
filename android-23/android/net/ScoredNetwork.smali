.class public Landroid/net/ScoredNetwork;
.super Ljava/lang/Object;
.source "ScoredNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ScoredNetwork$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/ScoredNetwork;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final networkKey:Landroid/net/NetworkKey;

.field public final rssiCurve:Landroid/net/RssiCurve;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 108
    new-instance v0, Landroid/net/ScoredNetwork$1;

    #@2
    invoke-direct {v0}, Landroid/net/ScoredNetwork$1;-><init>()V

    #@5
    .line 107
    sput-object v0, Landroid/net/ScoredNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;)V
    .locals 0
    .param p1, "networkKey"    # Landroid/net/NetworkKey;
    .param p2, "rssiCurve"    # Landroid/net/RssiCurve;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@5
    .line 58
    iput-object p2, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@7
    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    sget-object v0, Landroid/net/NetworkKey;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/net/NetworkKey;

    #@b
    iput-object v0, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@d
    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@10
    move-result v0

    #@11
    const/4 v1, 0x1

    #@12
    if-ne v0, v1, :cond_0

    #@14
    .line 64
    sget-object v0, Landroid/net/RssiCurve;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/net/RssiCurve;

    #@1c
    iput-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@1e
    .line 61
    :goto_0
    return-void

    #@1f
    .line 66
    :cond_0
    const/4 v0, 0x0

    #@20
    iput-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@22
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/ScoredNetwork;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/ScoredNetwork;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 72
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
    .line 88
    if-ne p0, p1, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 89
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/net/ScoredNetwork;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_2

    #@11
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 91
    check-cast v0, Landroid/net/ScoredNetwork;

    #@15
    .line 93
    .local v0, "that":Landroid/net/ScoredNetwork;
    iget-object v2, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@17
    iget-object v3, v0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@19
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_3

    #@1f
    .line 94
    iget-object v1, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@21
    iget-object v2, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@23
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    .line 93
    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 99
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget-object v1, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    iget-object v1, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ScoredNetwork[key="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ",score="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "]"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/net/NetworkKey;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 78
    iget-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 79
    const/4 v0, 0x1

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@d
    .line 80
    iget-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@f
    invoke-virtual {v0, p1, p2}, Landroid/net/RssiCurve;->writeToParcel(Landroid/os/Parcel;I)V

    #@12
    .line 76
    :goto_0
    return-void

    #@13
    .line 82
    :cond_0
    const/4 v0, 0x0

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@17
    goto :goto_0
.end method
