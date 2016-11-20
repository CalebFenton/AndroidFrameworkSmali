.class Lcom/android/internal/telephony/cat/CommandDetails;
.super Lcom/android/internal/telephony/cat/ValueObject;
.source "CommandDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CommandDetails$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public commandNumber:I

.field public commandQualifier:I

.field public compRequired:Z

.field public typeOfCommand:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 67
    new-instance v0, Lcom/android/internal/telephony/cat/CommandDetails$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CommandDetails$1;-><init>()V

    #@5
    .line 66
    sput-object v0, Lcom/android/internal/telephony/cat/CommandDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ValueObject;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ValueObject;-><init>()V

    #@4
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    #@d
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v0

    #@11
    iput v0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    #@13
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v0

    #@17
    iput v0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@19
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@1f
    .line 51
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/cat/CommandDetails;)Z
    .locals 3
    .param p1, "other"    # Lcom/android/internal/telephony/cat/CommandDetails;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 45
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    #@3
    iget-boolean v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    #@5
    if-ne v1, v2, :cond_0

    #@7
    .line 46
    iget v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    #@9
    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    #@b
    if-ne v1, v2, :cond_0

    #@d
    .line 47
    iget v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@f
    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@11
    if-ne v1, v2, :cond_0

    #@13
    .line 48
    iget v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@15
    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@17
    if-ne v1, v2, :cond_0

    #@19
    const/4 v0, 0x1

    #@1a
    .line 45
    :cond_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 81
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getTag()Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .locals 1

    #@0
    .prologue
    .line 38
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CmdDetails: compRequired="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 87
    const-string/jumbo v1, " commandNumber="

    #@15
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 87
    iget v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    #@1b
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 88
    const-string/jumbo v1, " typeOfCommand="

    #@22
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 88
    iget v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@28
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 89
    const-string/jumbo v1, " commandQualifier="

    #@2f
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 89
    iget v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@35
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 61
    iget v0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 62
    iget v0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 63
    iget v0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 59
    return-void

    #@18
    .line 60
    :cond_0
    const/4 v0, 0x0

    #@19
    goto :goto_0
.end method
