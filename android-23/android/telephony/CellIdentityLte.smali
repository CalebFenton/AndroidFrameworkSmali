.class public final Landroid/telephony/CellIdentityLte;
.super Ljava/lang/Object;
.source "CellIdentityLte.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellIdentityLte$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellIdentityLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellIdentityLte"


# instance fields
.field private final mCi:I

.field private final mMcc:I

.field private final mMnc:I

.field private final mPci:I

.field private final mTac:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 186
    new-instance v0, Landroid/telephony/CellIdentityLte$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/CellIdentityLte$1;-><init>()V

    #@5
    .line 185
    sput-object v0, Landroid/telephony/CellIdentityLte;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const v0, 0x7fffffff

    #@3
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 48
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    #@8
    .line 49
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    #@a
    .line 50
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    #@c
    .line 51
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    #@e
    .line 52
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    #@10
    .line 47
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "ci"    # I
    .param p4, "pci"    # I
    .param p5, "tac"    # I

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    iput p1, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    #@5
    .line 67
    iput p2, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    #@7
    .line 68
    iput p3, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    #@9
    .line 69
    iput p4, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    #@b
    .line 70
    iput p5, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    #@d
    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    #@9
    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    #@f
    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    #@15
    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    #@1b
    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    #@21
    .line 174
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellIdentityLte;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentityLte;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellIdentityLte;)V
    .locals 1
    .param p1, "cid"    # Landroid/telephony/CellIdentityLte;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    iget v0, p1, Landroid/telephony/CellIdentityLte;->mMcc:I

    #@5
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    #@7
    .line 75
    iget v0, p1, Landroid/telephony/CellIdentityLte;->mMnc:I

    #@9
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    #@b
    .line 76
    iget v0, p1, Landroid/telephony/CellIdentityLte;->mCi:I

    #@d
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    #@f
    .line 77
    iget v0, p1, Landroid/telephony/CellIdentityLte;->mPci:I

    #@11
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    #@13
    .line 78
    iget v0, p1, Landroid/telephony/CellIdentityLte;->mTac:I

    #@15
    iput v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    #@17
    .line 73
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 202
    const-string/jumbo v0, "CellIdentityLte"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 201
    return-void
.end method


# virtual methods
.method copy()Landroid/telephony/CellIdentityLte;
    .locals 1

    #@0
    .prologue
    .line 82
    new-instance v0, Landroid/telephony/CellIdentityLte;

    #@2
    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityLte;-><init>(Landroid/telephony/CellIdentityLte;)V

    #@5
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 159
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 127
    if-ne p0, p1, :cond_0

    #@4
    .line 128
    return v1

    #@5
    .line 131
    :cond_0
    instance-of v3, p1, Landroid/telephony/CellIdentityLte;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 132
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 135
    check-cast v0, Landroid/telephony/CellIdentityLte;

    #@d
    .line 136
    .local v0, "o":Landroid/telephony/CellIdentityLte;
    iget v3, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    #@f
    iget v4, v0, Landroid/telephony/CellIdentityLte;->mMcc:I

    #@11
    if-ne v3, v4, :cond_3

    #@13
    .line 137
    iget v3, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    #@15
    iget v4, v0, Landroid/telephony/CellIdentityLte;->mMnc:I

    #@17
    if-ne v3, v4, :cond_3

    #@19
    .line 138
    iget v3, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    #@1b
    iget v4, v0, Landroid/telephony/CellIdentityLte;->mCi:I

    #@1d
    if-ne v3, v4, :cond_3

    #@1f
    .line 139
    iget v3, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    #@21
    iget v4, v0, Landroid/telephony/CellIdentityLte;->mPci:I

    #@23
    if-ne v3, v4, :cond_3

    #@25
    .line 140
    iget v3, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    #@27
    iget v4, v0, Landroid/telephony/CellIdentityLte;->mTac:I

    #@29
    if-ne v3, v4, :cond_2

    #@2b
    .line 136
    :goto_0
    return v1

    #@2c
    :cond_2
    move v1, v2

    #@2d
    .line 140
    goto :goto_0

    #@2e
    :cond_3
    move v1, v2

    #@2f
    .line 136
    goto :goto_0
.end method

.method public getCi()I
    .locals 1

    #@0
    .prologue
    .line 103
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    #@2
    return v0
.end method

.method public getMcc()I
    .locals 1

    #@0
    .prologue
    .line 89
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    #@2
    return v0
.end method

.method public getMnc()I
    .locals 1

    #@0
    .prologue
    .line 96
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    #@2
    return v0
.end method

.method public getPci()I
    .locals 1

    #@0
    .prologue
    .line 110
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    #@2
    return v0
.end method

.method public getTac()I
    .locals 1

    #@0
    .prologue
    .line 117
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 122
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    iget v1, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    iget v1, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    #@e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x1

    #@13
    aput-object v1, v0, v2

    #@15
    iget v1, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    #@17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v1

    #@1b
    const/4 v2, 0x2

    #@1c
    aput-object v1, v0, v2

    #@1e
    iget v1, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    #@20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v1

    #@24
    const/4 v2, 0x3

    #@25
    aput-object v1, v0, v2

    #@27
    iget v1, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    #@29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v1

    #@2d
    const/4 v2, 0x4

    #@2e
    aput-object v1, v0, v2

    #@30
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@33
    move-result v0

    #@34
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "CellIdentityLte:{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 146
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " mMcc="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    iget v1, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    .line 147
    const-string/jumbo v1, " mMnc="

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    iget v1, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    .line 148
    const-string/jumbo v1, " mCi="

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    iget v1, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    .line 149
    const-string/jumbo v1, " mPci="

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    iget v1, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    .line 150
    const-string/jumbo v1, " mTac="

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    iget v1, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    .line 151
    const-string/jumbo v1, "}"

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 166
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mMcc:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 167
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mMnc:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 168
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 169
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 170
    iget v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 164
    return-void
.end method
