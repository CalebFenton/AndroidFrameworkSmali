.class public Landroid/telephony/SubscriptionInfo;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_SIZE:I = 0x10


# instance fields
.field private mCarrierName:Ljava/lang/CharSequence;

.field private mCountryIso:Ljava/lang/String;

.field private mDataRoaming:I

.field private mDisplayName:Ljava/lang/CharSequence;

.field private mIccId:Ljava/lang/String;

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mIconTint:I

.field private mId:I

.field private mMcc:I

.field private mMnc:I

.field private mNameSource:I

.field private mNumber:Ljava/lang/String;

.field private mSimSlotIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 286
    new-instance v0, Landroid/telephony/SubscriptionInfo$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/SubscriptionInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/telephony/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "simSlotIndex"    # I
    .param p4, "displayName"    # Ljava/lang/CharSequence;
    .param p5, "carrierName"    # Ljava/lang/CharSequence;
    .param p6, "nameSource"    # I
    .param p7, "iconTint"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "roaming"    # I
    .param p10, "icon"    # Landroid/graphics/Bitmap;
    .param p11, "mcc"    # I
    .param p12, "mnc"    # I
    .param p13, "countryIso"    # Ljava/lang/String;

    #@0
    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 117
    iput p1, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    #@5
    .line 118
    iput-object p2, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    #@7
    .line 119
    iput p3, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    #@9
    .line 120
    iput-object p4, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    #@b
    .line 121
    iput-object p5, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    #@d
    .line 122
    iput p6, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    #@f
    .line 123
    iput p7, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    #@11
    .line 124
    iput-object p8, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    #@13
    .line 125
    iput p9, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    #@15
    .line 126
    iput-object p10, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    #@17
    .line 127
    iput p11, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    #@19
    .line 128
    iput p12, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    #@1b
    .line 129
    iput-object p13, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    #@1d
    .line 116
    return-void
.end method


# virtual methods
.method public createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 201
    iget-object v10, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    #@2
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    #@5
    move-result v6

    #@6
    .line 202
    .local v6, "width":I
    iget-object v10, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    #@8
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    #@b
    move-result v1

    #@c
    .line 203
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v10

    #@10
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@13
    move-result-object v3

    #@14
    .line 206
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    iget-object v10, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    #@16
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@19
    move-result-object v10

    #@1a
    invoke-static {v3, v6, v1, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@1d
    move-result-object v7

    #@1e
    .line 208
    .local v7, "workingBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    #@20
    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@23
    .line 209
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    #@25
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    #@28
    .line 212
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    #@2a
    iget v11, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    #@2c
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@2e
    invoke-direct {v10, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@31
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@34
    .line 213
    iget-object v10, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    #@36
    const/4 v11, 0x0

    #@37
    const/4 v12, 0x0

    #@38
    invoke-virtual {v0, v10, v11, v12, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@3b
    .line 214
    const/4 v10, 0x0

    #@3c
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@3f
    .line 217
    const/4 v10, 0x1

    #@40
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@43
    .line 218
    const-string/jumbo v10, "sans-serif"

    #@46
    const/4 v11, 0x0

    #@47
    invoke-static {v10, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@4a
    move-result-object v10

    #@4b
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@4e
    .line 219
    const/4 v10, -0x1

    #@4f
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColor(I)V

    #@52
    .line 221
    iget v10, v3, Landroid/util/DisplayMetrics;->density:F

    #@54
    const/high16 v11, 0x41800000    # 16.0f

    #@56
    mul-float/2addr v10, v11

    #@57
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    #@5a
    .line 223
    const-string/jumbo v10, "%d"

    #@5d
    const/4 v11, 0x1

    #@5e
    new-array v11, v11, [Ljava/lang/Object;

    #@60
    iget v12, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    #@62
    add-int/lit8 v12, v12, 0x1

    #@64
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@67
    move-result-object v12

    #@68
    const/4 v13, 0x0

    #@69
    aput-object v12, v11, v13

    #@6b
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    .line 224
    .local v2, "index":Ljava/lang/String;
    new-instance v5, Landroid/graphics/Rect;

    #@71
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #@74
    .line 225
    .local v5, "textBound":Landroid/graphics/Rect;
    const/4 v10, 0x0

    #@75
    const/4 v11, 0x1

    #@76
    invoke-virtual {v4, v2, v10, v11, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    #@79
    .line 226
    int-to-float v10, v6

    #@7a
    const/high16 v11, 0x40000000    # 2.0f

    #@7c
    div-float/2addr v10, v11

    #@7d
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    #@80
    move-result v11

    #@81
    int-to-float v11, v11

    #@82
    sub-float v8, v10, v11

    #@84
    .line 227
    .local v8, "xOffset":F
    int-to-float v10, v1

    #@85
    const/high16 v11, 0x40000000    # 2.0f

    #@87
    div-float/2addr v10, v11

    #@88
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    #@8b
    move-result v11

    #@8c
    int-to-float v11, v11

    #@8d
    sub-float v9, v10, v11

    #@8f
    .line 228
    .local v9, "yOffset":F
    invoke-virtual {v0, v2, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@92
    .line 230
    return-object v7
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 332
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCarrierName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getCountryIso()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDataRoaming()I
    .locals 1

    #@0
    .prologue
    .line 262
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    #@2
    return v0
.end method

.method public getDisplayName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIconTint()I
    .locals 1

    #@0
    .prologue
    .line 239
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    #@2
    return v0
.end method

.method public getMcc()I
    .locals 1

    #@0
    .prologue
    .line 269
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    #@2
    return v0
.end method

.method public getMnc()I
    .locals 1

    #@0
    .prologue
    .line 276
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    #@2
    return v0
.end method

.method public getNameSource()I
    .locals 1

    #@0
    .prologue
    .line 189
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    #@2
    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSimSlotIndex()I
    .locals 1

    #@0
    .prologue
    .line 150
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    #@2
    return v0
.end method

.method public getSubscriptionId()I
    .locals 1

    #@0
    .prologue
    .line 136
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    #@2
    return v0
.end method

.method public setCarrierName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 180
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    #@2
    .line 179
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 165
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    #@2
    .line 164
    return-void
.end method

.method public setIconTint(I)V
    .locals 0
    .param p1, "iconTint"    # I

    #@0
    .prologue
    .line 247
    iput p1, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    #@2
    .line 246
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{id="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", iccId="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, " simSlotIndex="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 338
    const-string/jumbo v1, " displayName="

    #@2f
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 338
    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    #@35
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 338
    const-string/jumbo v1, " carrierName="

    #@3c
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 338
    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    #@42
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 339
    const-string/jumbo v1, " nameSource="

    #@49
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 339
    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    #@4f
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 339
    const-string/jumbo v1, " iconTint="

    #@56
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 339
    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    #@5c
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 340
    const-string/jumbo v1, " dataRoaming="

    #@63
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 340
    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    #@69
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    .line 340
    const-string/jumbo v1, " iconBitmap="

    #@70
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    .line 340
    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    #@76
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    .line 340
    const-string/jumbo v1, " mcc "

    #@7d
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    .line 340
    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    #@83
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v0

    #@87
    .line 341
    const-string/jumbo v1, " mnc "

    #@8a
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v0

    #@8e
    .line 341
    iget v1, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    #@90
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@93
    move-result-object v0

    #@94
    .line 341
    const-string/jumbo v1, "}"

    #@97
    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v0

    #@9f
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 315
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 316
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 317
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 318
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@14
    .line 319
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@19
    .line 320
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 321
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 322
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@28
    .line 323
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 324
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 325
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 326
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3c
    .line 327
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    #@3e
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@41
    .line 314
    return-void
.end method
