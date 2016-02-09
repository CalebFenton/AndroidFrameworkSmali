.class public Landroid/telephony/cdma/CdmaSmsCbProgramData;
.super Ljava/lang/Object;
.source "CdmaSmsCbProgramData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/cdma/CdmaSmsCbProgramData$1;
    }
.end annotation


# static fields
.field public static final ALERT_OPTION_DEFAULT_ALERT:I = 0x1

.field public static final ALERT_OPTION_HIGH_PRIORITY_ONCE:I = 0xa

.field public static final ALERT_OPTION_HIGH_PRIORITY_REPEAT:I = 0xb

.field public static final ALERT_OPTION_LOW_PRIORITY_ONCE:I = 0x6

.field public static final ALERT_OPTION_LOW_PRIORITY_REPEAT:I = 0x7

.field public static final ALERT_OPTION_MED_PRIORITY_ONCE:I = 0x8

.field public static final ALERT_OPTION_MED_PRIORITY_REPEAT:I = 0x9

.field public static final ALERT_OPTION_NO_ALERT:I = 0x0

.field public static final ALERT_OPTION_VIBRATE_ONCE:I = 0x2

.field public static final ALERT_OPTION_VIBRATE_REPEAT:I = 0x3

.field public static final ALERT_OPTION_VISUAL_ONCE:I = 0x4

.field public static final ALERT_OPTION_VISUAL_REPEAT:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPERATION_ADD_CATEGORY:I = 0x1

.field public static final OPERATION_CLEAR_CATEGORIES:I = 0x2

.field public static final OPERATION_DELETE_CATEGORY:I


# instance fields
.field private final mAlertOption:I

.field private final mCategory:I

.field private final mCategoryName:Ljava/lang/String;

.field private final mLanguage:I

.field private final mMaxMessages:I

.field private final mOperation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 199
    new-instance v0, Landroid/telephony/cdma/CdmaSmsCbProgramData$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/cdma/CdmaSmsCbProgramData$1;-><init>()V

    #@5
    sput-object v0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 0
    .param p1, "operation"    # I
    .param p2, "category"    # I
    .param p3, "language"    # I
    .param p4, "maxMessages"    # I
    .param p5, "alertOption"    # I
    .param p6, "categoryName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 99
    iput p1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mOperation:I

    #@5
    .line 100
    iput p2, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategory:I

    #@7
    .line 101
    iput p3, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mLanguage:I

    #@9
    .line 102
    iput p4, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mMaxMessages:I

    #@b
    .line 103
    iput p5, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mAlertOption:I

    #@d
    .line 104
    iput-object p6, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    #@f
    .line 98
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mOperation:I

    #@9
    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategory:I

    #@f
    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mLanguage:I

    #@15
    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mMaxMessages:I

    #@1b
    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mAlertOption:I

    #@21
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    #@27
    .line 108
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 194
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAlertOption()I
    .locals 1

    #@0
    .prologue
    .line 170
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mAlertOption:I

    #@2
    return v0
.end method

.method public getCategory()I
    .locals 1

    #@0
    .prologue
    .line 146
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategory:I

    #@2
    return v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLanguage()I
    .locals 1

    #@0
    .prologue
    .line 154
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mLanguage:I

    #@2
    return v0
.end method

.method public getMaxMessages()I
    .locals 1

    #@0
    .prologue
    .line 162
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mMaxMessages:I

    #@2
    return v0
.end method

.method public getOperation()I
    .locals 1

    #@0
    .prologue
    .line 138
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mOperation:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CdmaSmsCbProgramData{operation="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mOperation:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", category="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategory:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 184
    const-string/jumbo v1, ", language="

    #@22
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 184
    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mLanguage:I

    #@28
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 184
    const-string/jumbo v1, ", max messages="

    #@2f
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 184
    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mMaxMessages:I

    #@35
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 185
    const-string/jumbo v1, ", alert option="

    #@3c
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 185
    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mAlertOption:I

    #@42
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 185
    const-string/jumbo v1, ", category name="

    #@49
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 185
    iget-object v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    #@4f
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 185
    const/16 v1, 0x7d

    #@55
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 125
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mOperation:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 126
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategory:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 127
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mLanguage:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 128
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mMaxMessages:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 129
    iget v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mAlertOption:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 130
    iget-object v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 124
    return-void
.end method
