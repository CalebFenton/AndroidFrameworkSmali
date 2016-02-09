.class public Landroid/telephony/SmsCbCmasInfo;
.super Ljava/lang/Object;
.source "SmsCbCmasInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsCbCmasInfo$1;
    }
.end annotation


# static fields
.field public static final CMAS_CATEGORY_CBRNE:I = 0xa

.field public static final CMAS_CATEGORY_ENV:I = 0x7

.field public static final CMAS_CATEGORY_FIRE:I = 0x5

.field public static final CMAS_CATEGORY_GEO:I = 0x0

.field public static final CMAS_CATEGORY_HEALTH:I = 0x6

.field public static final CMAS_CATEGORY_INFRA:I = 0x9

.field public static final CMAS_CATEGORY_MET:I = 0x1

.field public static final CMAS_CATEGORY_OTHER:I = 0xb

.field public static final CMAS_CATEGORY_RESCUE:I = 0x4

.field public static final CMAS_CATEGORY_SAFETY:I = 0x2

.field public static final CMAS_CATEGORY_SECURITY:I = 0x3

.field public static final CMAS_CATEGORY_TRANSPORT:I = 0x8

.field public static final CMAS_CATEGORY_UNKNOWN:I = -0x1

.field public static final CMAS_CERTAINTY_LIKELY:I = 0x1

.field public static final CMAS_CERTAINTY_OBSERVED:I = 0x0

.field public static final CMAS_CERTAINTY_UNKNOWN:I = -0x1

.field public static final CMAS_CLASS_CHILD_ABDUCTION_EMERGENCY:I = 0x3

.field public static final CMAS_CLASS_CMAS_EXERCISE:I = 0x5

.field public static final CMAS_CLASS_EXTREME_THREAT:I = 0x1

.field public static final CMAS_CLASS_OPERATOR_DEFINED_USE:I = 0x6

.field public static final CMAS_CLASS_PRESIDENTIAL_LEVEL_ALERT:I = 0x0

.field public static final CMAS_CLASS_REQUIRED_MONTHLY_TEST:I = 0x4

.field public static final CMAS_CLASS_SEVERE_THREAT:I = 0x2

.field public static final CMAS_CLASS_UNKNOWN:I = -0x1

.field public static final CMAS_RESPONSE_TYPE_ASSESS:I = 0x6

.field public static final CMAS_RESPONSE_TYPE_AVOID:I = 0x5

.field public static final CMAS_RESPONSE_TYPE_EVACUATE:I = 0x1

.field public static final CMAS_RESPONSE_TYPE_EXECUTE:I = 0x3

.field public static final CMAS_RESPONSE_TYPE_MONITOR:I = 0x4

.field public static final CMAS_RESPONSE_TYPE_NONE:I = 0x7

.field public static final CMAS_RESPONSE_TYPE_PREPARE:I = 0x2

.field public static final CMAS_RESPONSE_TYPE_SHELTER:I = 0x0

.field public static final CMAS_RESPONSE_TYPE_UNKNOWN:I = -0x1

.field public static final CMAS_SEVERITY_EXTREME:I = 0x0

.field public static final CMAS_SEVERITY_SEVERE:I = 0x1

.field public static final CMAS_SEVERITY_UNKNOWN:I = -0x1

.field public static final CMAS_URGENCY_EXPECTED:I = 0x1

.field public static final CMAS_URGENCY_IMMEDIATE:I = 0x0

.field public static final CMAS_URGENCY_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SmsCbCmasInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCategory:I

.field private final mCertainty:I

.field private final mMessageClass:I

.field private final mResponseType:I

.field private final mSeverity:I

.field private final mUrgency:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 299
    new-instance v0, Landroid/telephony/SmsCbCmasInfo$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/SmsCbCmasInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/telephony/SmsCbCmasInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "messageClass"    # I
    .param p2, "category"    # I
    .param p3, "responseType"    # I
    .param p4, "severity"    # I
    .param p5, "urgency"    # I
    .param p6, "certainty"    # I

    #@0
    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 199
    iput p1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    #@5
    .line 200
    iput p2, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    #@7
    .line 201
    iput p3, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    #@9
    .line 202
    iput p4, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    #@b
    .line 203
    iput p5, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    #@d
    .line 204
    iput p6, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    #@f
    .line 198
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    #@9
    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    #@f
    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    #@15
    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    #@1b
    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    #@21
    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    #@27
    .line 208
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 294
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCategory()I
    .locals 1

    #@0
    .prologue
    .line 246
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    #@2
    return v0
.end method

.method public getCertainty()I
    .locals 1

    #@0
    .prologue
    .line 278
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    #@2
    return v0
.end method

.method public getMessageClass()I
    .locals 1

    #@0
    .prologue
    .line 238
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    #@2
    return v0
.end method

.method public getResponseType()I
    .locals 1

    #@0
    .prologue
    .line 254
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    #@2
    return v0
.end method

.method public getSeverity()I
    .locals 1

    #@0
    .prologue
    .line 262
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    #@2
    return v0
.end method

.method public getUrgency()I
    .locals 1

    #@0
    .prologue
    .line 270
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SmsCbCmasInfo{messageClass="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

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
    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 284
    const-string/jumbo v1, ", responseType="

    #@22
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 284
    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    #@28
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 284
    const-string/jumbo v1, ", severity="

    #@2f
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 284
    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    #@35
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 285
    const-string/jumbo v1, ", urgency="

    #@3c
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 285
    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    #@42
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 285
    const-string/jumbo v1, ", certainty="

    #@49
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 285
    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    #@4f
    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 285
    const/16 v1, 0x7d

    #@55
    .line 283
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
    .line 225
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 226
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 227
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 228
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 229
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 230
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 224
    return-void
.end method
