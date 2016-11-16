.class public Landroid/telephony/PcoData;
.super Ljava/lang/Object;
.source "PcoData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PcoData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/PcoData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bearerProto:Ljava/lang/String;

.field public final cid:I

.field public final contents:[B

.field public final pcoId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 72
    new-instance v0, Landroid/telephony/PcoData$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/PcoData$1;-><init>()V

    #@5
    sput-object v0, Landroid/telephony/PcoData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I[B)V
    .locals 0
    .param p1, "cid"    # I
    .param p2, "bearerProto"    # Ljava/lang/String;
    .param p3, "pcoId"    # I
    .param p4, "contents"    # [B

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput p1, p0, Landroid/telephony/PcoData;->cid:I

    #@5
    .line 38
    iput-object p2, p0, Landroid/telephony/PcoData;->bearerProto:Ljava/lang/String;

    #@7
    .line 39
    iput p3, p0, Landroid/telephony/PcoData;->pcoId:I

    #@9
    .line 40
    iput-object p4, p0, Landroid/telephony/PcoData;->contents:[B

    #@b
    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/PcoData;->cid:I

    #@9
    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/telephony/PcoData;->bearerProto:Ljava/lang/String;

    #@f
    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telephony/PcoData;->pcoId:I

    #@15
    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/telephony/PcoData;->contents:[B

    #@1b
    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 64
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "PcoData("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/telephony/PcoData;->cid:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/telephony/PcoData;->bearerProto:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ", "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget v1, p0, Landroid/telephony/PcoData;->pcoId:I

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, ", contents["

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 85
    iget-object v1, p0, Landroid/telephony/PcoData;->contents:[B

    #@35
    array-length v1, v1

    #@36
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 85
    const-string/jumbo v1, "])"

    #@3d
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 54
    iget v0, p0, Landroid/telephony/PcoData;->cid:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 55
    iget-object v0, p0, Landroid/telephony/PcoData;->bearerProto:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 56
    iget v0, p0, Landroid/telephony/PcoData;->pcoId:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 57
    iget-object v0, p0, Landroid/telephony/PcoData;->contents:[B

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@14
    .line 53
    return-void
.end method
