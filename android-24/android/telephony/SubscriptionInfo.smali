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

.field private mSimProvisioningStatus:I

.field private mSimSlotIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 307
    new-instance v0, Landroid/telephony/SubscriptionInfo$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/SubscriptionInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/telephony/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;I)V
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
    .param p14, "simProvisioningStatus"    # I

    #@0
    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 126
    iput p1, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    #@5
    .line 127
    iput-object p2, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    #@7
    .line 128
    iput p3, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    #@9
    .line 129
    iput-object p4, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    #@b
    .line 130
    iput-object p5, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    #@d
    .line 131
    iput p6, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    #@f
    .line 132
    iput p7, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    #@11
    .line 133
    iput-object p8, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    #@13
    .line 134
    iput p9, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    #@15
    .line 135
    iput-object p10, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    #@17
    .line 136
    iput p11, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    #@19
    .line 137
    iput p12, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    #@1b
    .line 138
    iput-object p13, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    #@1d
    .line 139
    iput p14, p0, Landroid/telephony/SubscriptionInfo;->mSimProvisioningStatus:I

    #@1f
    .line 125
    return-void
.end method

.method public static givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "iccId"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v3, 0x9

    #@2
    .line 363
    const/4 v0, 0x0

    #@3
    .line 364
    .local v0, "iccIdToPrint":Ljava/lang/String;
    if-eqz p0, :cond_1

    #@5
    .line 365
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    if-le v1, v3, :cond_0

    #@b
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@d
    if-eqz v1, :cond_2

    #@f
    .line 368
    :cond_0
    move-object v0, p0

    #@10
    .line 371
    .end local v0    # "iccIdToPrint":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    #@11
    .line 366
    .restart local v0    # "iccIdToPrint":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const/4 v2, 0x0

    #@17
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, "XXXXXXXXXXX"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .local v0, "iccIdToPrint":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 211
    iget-object v10, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    #@2
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    #@5
    move-result v6

    #@6
    .line 212
    .local v6, "width":I
    iget-object v10, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    #@8
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    #@b
    move-result v1

    #@c
    .line 213
    .local v1, "height":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v10

    #@10
    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@13
    move-result-object v3

    #@14
    .line 216
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
    .line 218
    .local v7, "workingBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    #@20
    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@23
    .line 219
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    #@25
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    #@28
    .line 222
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
    .line 223
    iget-object v10, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    #@36
    const/4 v11, 0x0

    #@37
    const/4 v12, 0x0

    #@38
    invoke-virtual {v0, v10, v11, v12, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@3b
    .line 224
    const/4 v10, 0x0

    #@3c
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    #@3f
    .line 227
    const/4 v10, 0x1

    #@40
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@43
    .line 228
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
    .line 229
    const/4 v10, -0x1

    #@4f
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColor(I)V

    #@52
    .line 231
    iget v10, v3, Landroid/util/DisplayMetrics;->density:F

    #@54
    const/high16 v11, 0x41800000    # 16.0f

    #@56
    mul-float/2addr v10, v11

    #@57
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    #@5a
    .line 233
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
    .line 234
    .local v2, "index":Ljava/lang/String;
    new-instance v5, Landroid/graphics/Rect;

    #@71
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #@74
    .line 235
    .local v5, "textBound":Landroid/graphics/Rect;
    const/4 v10, 0x0

    #@75
    const/4 v11, 0x1

    #@76
    invoke-virtual {v4, v2, v10, v11, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    #@79
    .line 236
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
    .line 237
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
    .line 238
    .local v9, "yOffset":F
    invoke-virtual {v0, v2, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@92
    .line 240
    return-object v7
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 356
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCarrierName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getCountryIso()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDataRoaming()I
    .locals 1

    #@0
    .prologue
    .line 272
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    #@2
    return v0
.end method

.method public getDisplayName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIconTint()I
    .locals 1

    #@0
    .prologue
    .line 249
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    #@2
    return v0
.end method

.method public getMcc()I
    .locals 1

    #@0
    .prologue
    .line 290
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    #@2
    return v0
.end method

.method public getMnc()I
    .locals 1

    #@0
    .prologue
    .line 297
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    #@2
    return v0
.end method

.method public getNameSource()I
    .locals 1

    #@0
    .prologue
    .line 199
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    #@2
    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSimProvisioningStatus()I
    .locals 1

    #@0
    .prologue
    .line 283
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mSimProvisioningStatus:I

    #@2
    return v0
.end method

.method public getSimSlotIndex()I
    .locals 1

    #@0
    .prologue
    .line 160
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    #@2
    return v0
.end method

.method public getSubscriptionId()I
    .locals 1

    #@0
    .prologue
    .line 146
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    #@2
    return v0
.end method

.method public setCarrierName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 190
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    #@2
    .line 189
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 175
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    #@2
    .line 174
    return-void
.end method

.method public setIconTint(I)V
    .locals 0
    .param p1, "iconTint"    # I

    #@0
    .prologue
    .line 257
    iput p1, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    #@2
    .line 256
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 376
    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    #@2
    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 377
    .local v0, "iccIdToPrint":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "{id="

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget v2, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, ", iccId="

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const-string/jumbo v2, " simSlotIndex="

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget v2, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 378
    const-string/jumbo v2, " displayName="

    #@33
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 378
    iget-object v2, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    #@39
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 378
    const-string/jumbo v2, " carrierName="

    #@40
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 378
    iget-object v2, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    #@46
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    .line 379
    const-string/jumbo v2, " nameSource="

    #@4d
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    .line 379
    iget v2, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    #@53
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    .line 379
    const-string/jumbo v2, " iconTint="

    #@5a
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    .line 379
    iget v2, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    #@60
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    .line 380
    const-string/jumbo v2, " dataRoaming="

    #@67
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    .line 380
    iget v2, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    #@6d
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    .line 380
    const-string/jumbo v2, " iconBitmap="

    #@74
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    .line 380
    iget-object v2, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    #@7a
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    .line 380
    const-string/jumbo v2, " mcc "

    #@81
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    .line 380
    iget v2, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    #@87
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    .line 381
    const-string/jumbo v2, " mnc "

    #@8e
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    .line 381
    iget v2, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    #@94
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    move-result-object v1

    #@98
    .line 381
    const-string/jumbo v2, " SimProvisioningStatus "

    #@9b
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v1

    #@9f
    .line 381
    iget v2, p0, Landroid/telephony/SubscriptionInfo;->mSimProvisioningStatus:I

    #@a1
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v1

    #@a5
    .line 381
    const-string/jumbo v2, "}"

    #@a8
    .line 377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v1

    #@b0
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 338
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 339
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 340
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 341
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@14
    .line 342
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@19
    .line 343
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 344
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 345
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@28
    .line 346
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 347
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 348
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 349
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@3c
    .line 350
    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mSimProvisioningStatus:I

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 351
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    #@43
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@46
    .line 337
    return-void
.end method
