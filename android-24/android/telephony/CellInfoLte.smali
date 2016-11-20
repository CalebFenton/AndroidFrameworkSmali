.class public final Landroid/telephony/CellInfoLte;
.super Landroid/telephony/CellInfo;
.source "CellInfoLte.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellInfoLte$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellInfoLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellInfoLte"


# instance fields
.field private mCellIdentityLte:Landroid/telephony/CellIdentityLte;

.field private mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 130
    new-instance v0, Landroid/telephony/CellInfoLte$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/CellInfoLte$1;-><init>()V

    #@5
    sput-object v0, Landroid/telephony/CellInfoLte;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Landroid/telephony/CellInfo;-><init>()V

    #@3
    .line 37
    new-instance v0, Landroid/telephony/CellIdentityLte;

    #@5
    invoke-direct {v0}, Landroid/telephony/CellIdentityLte;-><init>()V

    #@8
    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@a
    .line 38
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    #@c
    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    #@f
    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    #@11
    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    .line 124
    sget-object v0, Landroid/telephony/CellIdentityLte;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/telephony/CellIdentityLte;

    #@b
    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@d
    .line 125
    sget-object v0, Landroid/telephony/CellSignalStrengthLte;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/telephony/CellSignalStrengthLte;

    #@15
    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    #@17
    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellInfoLte;)V
    .locals 1
    .param p1, "ci"    # Landroid/telephony/CellInfoLte;

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    #@3
    .line 44
    iget-object v0, p1, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@5
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->copy()Landroid/telephony/CellIdentityLte;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@b
    .line 45
    iget-object v0, p1, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    #@d
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->copy()Landroid/telephony/CellSignalStrengthLte;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    #@13
    .line 42
    return-void
.end method

.method protected static createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoLte;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 145
    new-instance v0, Landroid/telephony/CellInfoLte;

    #@2
    invoke-direct {v0, p0}, Landroid/telephony/CellInfoLte;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 152
    const-string/jumbo v0, "CellInfoLte"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 151
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 106
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 78
    invoke-super {p0, p1}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 79
    return v3

    #@8
    .line 82
    :cond_0
    :try_start_0
    move-object v0, p1

    #@9
    check-cast v0, Landroid/telephony/CellInfoLte;

    #@b
    move-object v2, v0

    #@c
    .line 83
    .local v2, "o":Landroid/telephony/CellInfoLte;
    iget-object v4, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@e
    iget-object v5, v2, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@10
    invoke-virtual {v4, v5}, Landroid/telephony/CellIdentityLte;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_1

    #@16
    .line 84
    iget-object v4, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    #@18
    iget-object v5, v2, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    #@1a
    invoke-virtual {v4, v5}, Landroid/telephony/CellSignalStrengthLte;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result v3

    #@1e
    .line 83
    :cond_1
    return v3

    #@1f
    .line 85
    .end local v2    # "o":Landroid/telephony/CellInfoLte;
    :catch_0
    move-exception v1

    #@20
    .line 86
    .local v1, "e":Ljava/lang/ClassCastException;
    return v3
.end method

.method public getCellIdentity()Landroid/telephony/CellIdentityLte;
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@2
    return-object v0
.end method

.method public getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 73
    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@6
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->hashCode()I

    #@9
    move-result v1

    #@a
    add-int/2addr v0, v1

    #@b
    iget-object v1, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    #@d
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->hashCode()I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    return v0
.end method

.method public setCellIdentity(Landroid/telephony/CellIdentityLte;)V
    .locals 0
    .param p1, "cid"    # Landroid/telephony/CellIdentityLte;

    #@0
    .prologue
    .line 55
    iput-object p1, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@2
    .line 53
    return-void
.end method

.method public setCellSignalStrength(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 0
    .param p1, "css"    # Landroid/telephony/CellSignalStrengthLte;

    #@0
    .prologue
    .line 65
    iput-object p1, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    #@2
    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 94
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "CellInfoLte:{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 95
    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    .line 96
    const-string/jumbo v1, " "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    move-result-object v1

    #@19
    iget-object v2, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@1e
    .line 97
    const-string/jumbo v1, " "

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    move-result-object v1

    #@25
    iget-object v2, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@2a
    .line 98
    const-string/jumbo v1, "}"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 113
    const/4 v0, 0x3

    #@1
    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    #@4
    .line 114
    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellIdentityLte:Landroid/telephony/CellIdentityLte;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityLte;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    .line 115
    iget-object v0, p0, Landroid/telephony/CellInfoLte;->mCellSignalStrengthLte:Landroid/telephony/CellSignalStrengthLte;

    #@b
    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthLte;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 111
    return-void
.end method
