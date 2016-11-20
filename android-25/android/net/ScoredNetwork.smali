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
.field public final meteredHint:Z

.field public final networkKey:Landroid/net/NetworkKey;

.field public final rssiCurve:Landroid/net/RssiCurve;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 140
    new-instance v0, Landroid/net/ScoredNetwork$1;

    #@2
    invoke-direct {v0}, Landroid/net/ScoredNetwork$1;-><init>()V

    #@5
    .line 139
    sput-object v0, Landroid/net/ScoredNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;)V
    .locals 1
    .param p1, "networkKey"    # Landroid/net/NetworkKey;
    .param p2, "rssiCurve"    # Landroid/net/RssiCurve;

    #@0
    .prologue
    .line 67
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/net/ScoredNetwork;-><init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;Z)V

    #@4
    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkKey;Landroid/net/RssiCurve;Z)V
    .locals 0
    .param p1, "networkKey"    # Landroid/net/NetworkKey;
    .param p2, "rssiCurve"    # Landroid/net/RssiCurve;
    .param p3, "meteredHint"    # Z

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 84
    iput-object p1, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@5
    .line 85
    iput-object p2, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@7
    .line 86
    iput-boolean p3, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    #@9
    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 90
    sget-object v0, Landroid/net/NetworkKey;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/net/NetworkKey;

    #@d
    iput-object v0, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@f
    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@12
    move-result v0

    #@13
    if-ne v0, v1, :cond_0

    #@15
    .line 92
    sget-object v0, Landroid/net/RssiCurve;->CREATOR:Landroid/os/Parcelable$Creator;

    #@17
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/net/RssiCurve;

    #@1d
    iput-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@1f
    .line 96
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_1

    #@25
    move v0, v1

    #@26
    :goto_1
    iput-boolean v0, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    #@28
    .line 89
    return-void

    #@29
    .line 94
    :cond_0
    const/4 v0, 0x0

    #@2a
    iput-object v0, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@2c
    goto :goto_0

    #@2d
    :cond_1
    move v0, v2

    #@2e
    .line 96
    goto :goto_1
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
    .line 101
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
    .line 118
    if-ne p0, p1, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 119
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
    .line 121
    check-cast v0, Landroid/net/ScoredNetwork;

    #@15
    .line 123
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
    .line 124
    iget-object v2, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@21
    iget-object v3, v0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@23
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    .line 123
    if-eqz v2, :cond_3

    #@29
    .line 125
    iget-boolean v1, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    #@2b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2e
    move-result-object v1

    #@2f
    iget-boolean v2, v0, Landroid/net/ScoredNetwork;->meteredHint:Z

    #@31
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@34
    move-result-object v2

    #@35
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@38
    move-result v1

    #@39
    .line 123
    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 130
    const/4 v0, 0x3

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
    iget-boolean v1, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    #@f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12
    move-result-object v1

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 135
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
    .line 136
    const-string/jumbo v1, ",meteredHint="

    #@22
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 136
    iget-boolean v1, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    #@28
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 136
    const-string/jumbo v1, "]"

    #@2f
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 106
    iget-object v2, p0, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    #@4
    invoke-virtual {v2, p1, p2}, Landroid/net/NetworkKey;->writeToParcel(Landroid/os/Parcel;I)V

    #@7
    .line 107
    iget-object v2, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@e
    .line 109
    iget-object v2, p0, Landroid/net/ScoredNetwork;->rssiCurve:Landroid/net/RssiCurve;

    #@10
    invoke-virtual {v2, p1, p2}, Landroid/net/RssiCurve;->writeToParcel(Landroid/os/Parcel;I)V

    #@13
    .line 113
    :goto_0
    iget-boolean v2, p0, Landroid/net/ScoredNetwork;->meteredHint:Z

    #@15
    if-eqz v2, :cond_1

    #@17
    :goto_1
    int-to-byte v0, v0

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@1b
    .line 105
    return-void

    #@1c
    .line 111
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    #@1f
    goto :goto_0

    #@20
    :cond_1
    move v0, v1

    #@21
    .line 113
    goto :goto_1
.end method
