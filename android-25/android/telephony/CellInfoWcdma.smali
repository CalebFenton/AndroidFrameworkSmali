.class public final Landroid/telephony/CellInfoWcdma;
.super Landroid/telephony/CellInfo;
.source "CellInfoWcdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellInfoWcdma$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellInfoWcdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellInfoWcdma"


# instance fields
.field private mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

.field private mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 124
    new-instance v0, Landroid/telephony/CellInfoWcdma$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/CellInfoWcdma$1;-><init>()V

    #@5
    sput-object v0, Landroid/telephony/CellInfoWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

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
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    #@5
    invoke-direct {v0}, Landroid/telephony/CellIdentityWcdma;-><init>()V

    #@8
    iput-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    #@a
    .line 38
    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    #@c
    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>()V

    #@f
    iput-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    #@11
    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    .line 119
    sget-object v0, Landroid/telephony/CellIdentityWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/telephony/CellIdentityWcdma;

    #@b
    iput-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    #@d
    .line 120
    sget-object v0, Landroid/telephony/CellSignalStrengthWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/telephony/CellSignalStrengthWcdma;

    #@15
    iput-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    #@17
    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellInfoWcdma;)V
    .locals 1
    .param p1, "ci"    # Landroid/telephony/CellInfoWcdma;

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/telephony/CellInfo;-><init>(Landroid/telephony/CellInfo;)V

    #@3
    .line 44
    iget-object v0, p1, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    #@5
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->copy()Landroid/telephony/CellIdentityWcdma;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    #@b
    .line 45
    iget-object v0, p1, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    #@d
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->copy()Landroid/telephony/CellSignalStrengthWcdma;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    #@13
    .line 42
    return-void
.end method

.method protected static createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoWcdma;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 139
    new-instance v0, Landroid/telephony/CellInfoWcdma;

    #@2
    invoke-direct {v0, p0}, Landroid/telephony/CellInfoWcdma;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 146
    const-string/jumbo v0, "CellInfoWcdma"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 145
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 102
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
    .line 74
    invoke-super {p0, p1}, Landroid/telephony/CellInfo;->equals(Ljava/lang/Object;)Z

    #@4
    move-result v4

    #@5
    if-nez v4, :cond_0

    #@7
    .line 75
    return v3

    #@8
    .line 78
    :cond_0
    :try_start_0
    move-object v0, p1

    #@9
    check-cast v0, Landroid/telephony/CellInfoWcdma;

    #@b
    move-object v2, v0

    #@c
    .line 79
    .local v2, "o":Landroid/telephony/CellInfoWcdma;
    iget-object v4, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    #@e
    iget-object v5, v2, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    #@10
    invoke-virtual {v4, v5}, Landroid/telephony/CellIdentityWcdma;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_1

    #@16
    .line 80
    iget-object v4, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    #@18
    iget-object v5, v2, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    #@1a
    invoke-virtual {v4, v5}, Landroid/telephony/CellSignalStrengthWcdma;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result v3

    #@1e
    .line 79
    :cond_1
    return v3

    #@1f
    .line 81
    .end local v2    # "o":Landroid/telephony/CellInfoWcdma;
    :catch_0
    move-exception v1

    #@20
    .line 82
    .local v1, "e":Ljava/lang/ClassCastException;
    return v3
.end method

.method public getCellIdentity()Landroid/telephony/CellIdentityWcdma;
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    #@2
    return-object v0
.end method

.method public getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 69
    invoke-super {p0}, Landroid/telephony/CellInfo;->hashCode()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    #@6
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->hashCode()I

    #@9
    move-result v1

    #@a
    add-int/2addr v0, v1

    #@b
    iget-object v1, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    #@d
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->hashCode()I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    return v0
.end method

.method public setCellIdentity(Landroid/telephony/CellIdentityWcdma;)V
    .locals 0
    .param p1, "cid"    # Landroid/telephony/CellIdentityWcdma;

    #@0
    .prologue
    .line 53
    iput-object p1, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    #@2
    .line 52
    return-void
.end method

.method public setCellSignalStrength(Landroid/telephony/CellSignalStrengthWcdma;)V
    .locals 0
    .param p1, "css"    # Landroid/telephony/CellSignalStrengthWcdma;

    #@0
    .prologue
    .line 61
    iput-object p1, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    #@2
    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 90
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "CellInfoWcdma:{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 91
    invoke-super {p0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    .line 92
    const-string/jumbo v1, " "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    move-result-object v1

    #@19
    iget-object v2, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@1e
    .line 93
    const-string/jumbo v1, " "

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    move-result-object v1

    #@25
    iget-object v2, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@2a
    .line 94
    const-string/jumbo v1, "}"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 96
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
    .line 108
    const/4 v0, 0x4

    #@1
    invoke-super {p0, p1, p2, v0}, Landroid/telephony/CellInfo;->writeToParcel(Landroid/os/Parcel;II)V

    #@4
    .line 109
    iget-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellIdentityWcdma:Landroid/telephony/CellIdentityWcdma;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellIdentityWcdma;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    .line 110
    iget-object v0, p0, Landroid/telephony/CellInfoWcdma;->mCellSignalStrengthWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    #@b
    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthWcdma;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 107
    return-void
.end method
