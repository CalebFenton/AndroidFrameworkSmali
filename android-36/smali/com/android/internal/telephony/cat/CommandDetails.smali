.class public Lcom/android/internal/telephony/cat/CommandDetails;
.super Lcom/android/internal/telephony/cat/ValueObject;
.source "CommandDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-r commandNumber:I

.field public greylist-max-r commandQualifier:I

.field public greylist-max-r compRequired:Z

.field public greylist-max-r typeOfCommand:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Lcom/android/internal/telephony/cat/CommandDetails$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CommandDetails$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CommandDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ValueObject;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 57
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ValueObject;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    return-void
.end method


# virtual methods
.method public blacklist compareTo(Lcom/android/internal/telephony/cat/CommandDetails;)Z
    .registers 4

    .line 51
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-ne v0, v1, :cond_1a

    iget v0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    if-ne v0, v1, :cond_1a

    iget v0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    if-ne v0, v1, :cond_1a

    iget p0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    iget p1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    if-ne p0, p1, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getTag()Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .registers 1

    .line 44
    sget-object p0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CmdDetails: compRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " commandNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " typeOfCommand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " commandQualifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 66
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget p2, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget p2, p0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget p0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
