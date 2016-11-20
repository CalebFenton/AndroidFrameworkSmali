.class public Landroid/telephony/cdma/CdmaSmsCbProgramResults;
.super Ljava/lang/Object;
.source "CdmaSmsCbProgramResults.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/cdma/CdmaSmsCbProgramResults$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramResults;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_CATEGORY_ALREADY_ADDED:I = 0x3

.field public static final RESULT_CATEGORY_ALREADY_DELETED:I = 0x4

.field public static final RESULT_CATEGORY_LIMIT_EXCEEDED:I = 0x2

.field public static final RESULT_INVALID_ALERT_OPTION:I = 0x6

.field public static final RESULT_INVALID_CATEGORY_NAME:I = 0x7

.field public static final RESULT_INVALID_MAX_MESSAGES:I = 0x5

.field public static final RESULT_MEMORY_LIMIT_EXCEEDED:I = 0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final RESULT_UNSPECIFIED_FAILURE:I = 0x8


# instance fields
.field private final mCategory:I

.field private final mCategoryResult:I

.field private final mLanguage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 133
    new-instance v0, Landroid/telephony/cdma/CdmaSmsCbProgramResults$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/cdma/CdmaSmsCbProgramResults$1;-><init>()V

    #@5
    sput-object v0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "category"    # I
    .param p2, "language"    # I
    .param p3, "categoryResult"    # I

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput p1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    #@5
    .line 68
    iput p2, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    #@7
    .line 69
    iput p3, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    #@9
    .line 66
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    #@9
    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    #@f
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    #@15
    .line 73
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 128
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCategory()I
    .locals 1

    #@0
    .prologue
    .line 97
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    #@2
    return v0
.end method

.method public getCategoryResult()I
    .locals 1

    #@0
    .prologue
    .line 113
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    #@2
    return v0
.end method

.method public getLanguage()I
    .locals 1

    #@0
    .prologue
    .line 105
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CdmaSmsCbProgramResults{category="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 119
    const-string/jumbo v1, ", language="

    #@15
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 119
    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    #@1b
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 119
    const-string/jumbo v1, ", result="

    #@22
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 119
    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    #@28
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 119
    const/16 v1, 0x7d

    #@2e
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 87
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 88
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 89
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 86
    return-void
.end method
