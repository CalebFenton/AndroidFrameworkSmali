.class public final Landroid/print/PrinterInfo;
.super Ljava/lang/Object;
.source "PrinterInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrinterInfo$1;,
        Landroid/print/PrinterInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_BUSY:I = 0x2

.field public static final STATUS_IDLE:I = 0x1

.field public static final STATUS_UNAVAILABLE:I = 0x3


# instance fields
.field private final mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

.field private final mCustomPrinterIconGen:I

.field private final mDescription:Ljava/lang/String;

.field private final mHasCustomPrinterIcon:Z

.field private final mIconResourceId:I

.field private final mId:Landroid/print/PrinterId;

.field private final mInfoIntent:Landroid/app/PendingIntent;

.field private final mName:Ljava/lang/String;

.field private final mStatus:I


# direct methods
.method static synthetic -get0(Landroid/print/PrinterInfo;)Landroid/print/PrinterCapabilitiesInfo;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/print/PrinterInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/print/PrinterInfo;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/print/PrinterInfo;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/print/PrinterInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/print/PrinterInfo;)Landroid/print/PrinterId;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/print/PrinterInfo;)Landroid/app/PendingIntent;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/print/PrinterInfo;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Landroid/print/PrinterInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Landroid/print/PrinterId;)Landroid/print/PrinterId;
    .locals 1
    .param p0, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    invoke-static {p0}, Landroid/print/PrinterInfo;->checkPrinterId(Landroid/print/PrinterId;)Landroid/print/PrinterId;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(I)I
    .locals 1
    .param p0, "status"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/print/PrinterInfo;->checkStatus(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Landroid/print/PrinterInfo;->checkName(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 552
    new-instance v0, Landroid/print/PrinterInfo$1;

    #@2
    invoke-direct {v0}, Landroid/print/PrinterInfo$1;-><init>()V

    #@5
    .line 551
    sput-object v0, Landroid/print/PrinterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 258
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/print/PrinterId;

    #@b
    invoke-static {v0}, Landroid/print/PrinterInfo;->checkPrinterId(Landroid/print/PrinterId;)Landroid/print/PrinterId;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@11
    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-static {v0}, Landroid/print/PrinterInfo;->checkName(Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@1b
    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    invoke-static {v0}, Landroid/print/PrinterInfo;->checkStatus(I)I

    #@22
    move-result v0

    #@23
    iput v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    #@25
    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@2b
    .line 262
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Landroid/print/PrinterCapabilitiesInfo;

    #@31
    iput-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@33
    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@36
    move-result v0

    #@37
    iput v0, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    #@39
    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_0

    #@3f
    const/4 v0, 0x1

    #@40
    :goto_0
    iput-boolean v0, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    #@42
    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v0

    #@46
    iput v0, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    #@48
    .line 266
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@4b
    move-result-object v0

    #@4c
    check-cast v0, Landroid/app/PendingIntent;

    #@4e
    iput-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    #@50
    .line 255
    return-void

    #@51
    :cond_0
    move v0, v1

    #@52
    .line 264
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrinterInfo;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/print/PrinterInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/print/PrinterId;Ljava/lang/String;IIZLjava/lang/String;Landroid/app/PendingIntent;Landroid/print/PrinterCapabilitiesInfo;I)V
    .locals 0
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "iconResourceId"    # I
    .param p5, "hasCustomPrinterIcon"    # Z
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "infoIntent"    # Landroid/app/PendingIntent;
    .param p8, "capabilities"    # Landroid/print/PrinterCapabilitiesInfo;
    .param p9, "customPrinterIconGen"    # I

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    iput-object p1, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@5
    .line 97
    iput-object p2, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@7
    .line 98
    iput p3, p0, Landroid/print/PrinterInfo;->mStatus:I

    #@9
    .line 99
    iput p4, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    #@b
    .line 100
    iput-boolean p5, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    #@d
    .line 101
    iput-object p6, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@f
    .line 102
    iput-object p7, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    #@11
    .line 103
    iput-object p8, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@13
    .line 104
    iput p9, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    #@15
    .line 95
    return-void
.end method

.method synthetic constructor <init>(Landroid/print/PrinterId;Ljava/lang/String;IIZLjava/lang/String;Landroid/app/PendingIntent;Landroid/print/PrinterCapabilitiesInfo;ILandroid/print/PrinterInfo;)V
    .locals 0
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "iconResourceId"    # I
    .param p5, "hasCustomPrinterIcon"    # Z
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "infoIntent"    # Landroid/app/PendingIntent;
    .param p8, "capabilities"    # Landroid/print/PrinterCapabilitiesInfo;
    .param p9, "customPrinterIconGen"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p9}, Landroid/print/PrinterInfo;-><init>(Landroid/print/PrinterId;Ljava/lang/String;IIZLjava/lang/String;Landroid/app/PendingIntent;Landroid/print/PrinterCapabilitiesInfo;I)V

    #@3
    return-void
.end method

.method private static checkName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 252
    const-string/jumbo v0, "name cannot be empty."

    #@3
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    return-object v0
.end method

.method private static checkPrinterId(Landroid/print/PrinterId;)Landroid/print/PrinterId;
    .locals 1
    .param p0, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 224
    const-string/jumbo v0, "printerId cannot be null."

    #@3
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/print/PrinterId;

    #@9
    return-object v0
.end method

.method private static checkStatus(I)I
    .locals 2
    .param p0, "status"    # I

    #@0
    .prologue
    .line 235
    const/4 v0, 0x1

    #@1
    if-eq p0, v0, :cond_0

    #@3
    .line 236
    const/4 v0, 0x2

    #@4
    if-eq p0, v0, :cond_0

    #@6
    .line 237
    const/4 v0, 0x3

    #@7
    if-eq p0, v0, :cond_0

    #@9
    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "status is invalid."

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 241
    :cond_0
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 271
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 349
    if-ne p0, p1, :cond_0

    #@4
    .line 350
    return v4

    #@5
    .line 352
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 353
    return v3

    #@8
    .line 355
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 356
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 358
    check-cast v0, Landroid/print/PrinterInfo;

    #@16
    .line 359
    .local v0, "other":Landroid/print/PrinterInfo;
    invoke-virtual {p0, v0}, Landroid/print/PrinterInfo;->equalsIgnoringStatus(Landroid/print/PrinterInfo;)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_3

    #@1c
    .line 360
    return v3

    #@1d
    .line 362
    :cond_3
    iget v1, p0, Landroid/print/PrinterInfo;->mStatus:I

    #@1f
    iget v2, v0, Landroid/print/PrinterInfo;->mStatus:I

    #@21
    if-eq v1, v2, :cond_4

    #@23
    .line 363
    return v3

    #@24
    .line 365
    :cond_4
    return v4
.end method

.method public equalsIgnoringStatus(Landroid/print/PrinterInfo;)Z
    .locals 3
    .param p1, "other"    # Landroid/print/PrinterInfo;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 312
    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@3
    iget-object v1, p1, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@5
    invoke-virtual {v0, v1}, Landroid/print/PrinterId;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 313
    return v2

    #@c
    .line 315
    :cond_0
    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@e
    iget-object v1, p1, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1

    #@16
    .line 316
    return v2

    #@17
    .line 318
    :cond_1
    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@19
    iget-object v1, p1, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@1b
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_2

    #@21
    .line 319
    return v2

    #@22
    .line 321
    :cond_2
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@24
    if-nez v0, :cond_3

    #@26
    .line 322
    iget-object v0, p1, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@28
    if-eqz v0, :cond_4

    #@2a
    .line 323
    return v2

    #@2b
    .line 325
    :cond_3
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@2d
    iget-object v1, p1, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@2f
    invoke-virtual {v0, v1}, Landroid/print/PrinterCapabilitiesInfo;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_4

    #@35
    .line 326
    return v2

    #@36
    .line 328
    :cond_4
    iget v0, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    #@38
    iget v1, p1, Landroid/print/PrinterInfo;->mIconResourceId:I

    #@3a
    if-eq v0, v1, :cond_5

    #@3c
    .line 329
    return v2

    #@3d
    .line 331
    :cond_5
    iget-boolean v0, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    #@3f
    iget-boolean v1, p1, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    #@41
    if-eq v0, v1, :cond_6

    #@43
    .line 332
    return v2

    #@44
    .line 334
    :cond_6
    iget v0, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    #@46
    iget v1, p1, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    #@48
    if-eq v0, v1, :cond_7

    #@4a
    .line 335
    return v2

    #@4b
    .line 337
    :cond_7
    iget-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    #@4d
    if-nez v0, :cond_8

    #@4f
    .line 338
    iget-object v0, p1, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    #@51
    if-eqz v0, :cond_9

    #@53
    .line 339
    return v2

    #@54
    .line 341
    :cond_8
    iget-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    #@56
    iget-object v1, p1, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    #@58
    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v0

    #@5c
    if-nez v0, :cond_9

    #@5e
    .line 342
    return v2

    #@5f
    .line 344
    :cond_9
    const/4 v0, 0x1

    #@60
    return v0
.end method

.method public getCapabilities()Landroid/print/PrinterCapabilitiesInfo;
    .locals 1

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@2
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getId()Landroid/print/PrinterId;
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@2
    return-object v0
.end method

.method public getInfoIntent()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    .line 204
    iget-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    #@0
    .prologue
    .line 183
    iget v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 289
    const/16 v0, 0x1f

    #@3
    .line 291
    .local v0, "prime":I
    iget-object v2, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@5
    invoke-virtual {v2}, Landroid/print/PrinterId;->hashCode()I

    #@8
    move-result v2

    #@9
    add-int/lit8 v1, v2, 0x1f

    #@b
    .line 292
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@d
    iget-object v4, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@f
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    #@12
    move-result v4

    #@13
    add-int v1, v2, v4

    #@15
    .line 293
    mul-int/lit8 v2, v1, 0x1f

    #@17
    iget v4, p0, Landroid/print/PrinterInfo;->mStatus:I

    #@19
    add-int v1, v2, v4

    #@1b
    .line 294
    mul-int/lit8 v4, v1, 0x1f

    #@1d
    iget-object v2, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@1f
    if-eqz v2, :cond_1

    #@21
    iget-object v2, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@23
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@26
    move-result v2

    #@27
    :goto_0
    add-int v1, v4, v2

    #@29
    .line 295
    mul-int/lit8 v4, v1, 0x1f

    #@2b
    iget-object v2, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@2d
    if-eqz v2, :cond_2

    #@2f
    iget-object v2, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@31
    invoke-virtual {v2}, Landroid/print/PrinterCapabilitiesInfo;->hashCode()I

    #@34
    move-result v2

    #@35
    :goto_1
    add-int v1, v4, v2

    #@37
    .line 296
    mul-int/lit8 v2, v1, 0x1f

    #@39
    iget v4, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    #@3b
    add-int v1, v2, v4

    #@3d
    .line 297
    mul-int/lit8 v4, v1, 0x1f

    #@3f
    iget-boolean v2, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    #@41
    if-eqz v2, :cond_3

    #@43
    const/4 v2, 0x1

    #@44
    :goto_2
    add-int v1, v4, v2

    #@46
    .line 298
    mul-int/lit8 v2, v1, 0x1f

    #@48
    iget v4, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    #@4a
    add-int v1, v2, v4

    #@4c
    .line 299
    mul-int/lit8 v2, v1, 0x1f

    #@4e
    iget-object v4, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    #@50
    if-eqz v4, :cond_0

    #@52
    iget-object v3, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    #@54
    invoke-virtual {v3}, Landroid/app/PendingIntent;->hashCode()I

    #@57
    move-result v3

    #@58
    :cond_0
    add-int v1, v2, v3

    #@5a
    .line 300
    return v1

    #@5b
    :cond_1
    move v2, v3

    #@5c
    .line 294
    goto :goto_0

    #@5d
    :cond_2
    move v2, v3

    #@5e
    .line 295
    goto :goto_1

    #@5f
    :cond_3
    move v2, v3

    #@60
    .line 297
    goto :goto_2
.end method

.method public loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 128
    const/4 v1, 0x0

    #@1
    .line 129
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4
    move-result-object v5

    #@5
    .line 131
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    iget-boolean v8, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    #@7
    if-eqz v8, :cond_0

    #@9
    .line 133
    const-string/jumbo v8, "print"

    #@c
    .line 132
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v7

    #@10
    check-cast v7, Landroid/print/PrintManager;

    #@12
    .line 135
    .local v7, "printManager":Landroid/print/PrintManager;
    iget-object v8, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@14
    invoke-virtual {v7, v8}, Landroid/print/PrintManager;->getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    #@17
    move-result-object v3

    #@18
    .line 137
    .local v3, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_0

    #@1a
    .line 138
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@1d
    move-result-object v1

    #@1e
    .line 142
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "icon":Landroid/graphics/drawable/Icon;
    .end local v7    # "printManager":Landroid/print/PrintManager;
    :cond_0
    if-nez v1, :cond_2

    #@20
    .line 144
    :try_start_0
    iget-object v8, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@22
    invoke-virtual {v8}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    #@25
    move-result-object v8

    #@26
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    .line 145
    .local v6, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    #@2b
    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@2e
    move-result-object v4

    #@2f
    .line 146
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@31
    .line 149
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v8, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    #@33
    if-eqz v8, :cond_1

    #@35
    .line 150
    iget v8, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    #@37
    invoke-virtual {v5, v6, v8, v0}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@3a
    move-result-object v1

    #@3b
    .line 154
    :cond_1
    if-nez v1, :cond_2

    #@3d
    .line 155
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@40
    move-result-object v1

    #@41
    .line 161
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v1

    #@42
    .line 157
    :catch_0
    move-exception v2

    #@43
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 371
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PrinterInfo{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 372
    const-string/jumbo v1, "id="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    .line 373
    const-string/jumbo v1, ", name="

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget-object v2, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 374
    const-string/jumbo v1, ", status="

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget v2, p0, Landroid/print/PrinterInfo;->mStatus:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    .line 375
    const-string/jumbo v1, ", description="

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    iget-object v2, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 376
    const-string/jumbo v1, ", capabilities="

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    iget-object v2, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    .line 377
    const-string/jumbo v1, ", iconResId="

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    iget v2, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    .line 378
    const-string/jumbo v1, ", hasCustomPrinterIcon="

    #@56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    iget-boolean v2, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5f
    .line 379
    const-string/jumbo v1, ", customPrinterIconGen="

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    iget v2, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    #@68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    .line 380
    const-string/jumbo v1, ", infoIntent="

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    iget-object v2, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    .line 381
    const-string/jumbo v1, "\"}"

    #@7a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    #@2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5
    .line 277
    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 278
    iget v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 279
    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 280
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    #@16
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@19
    .line 281
    iget v0, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 282
    iget-boolean v0, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    #@20
    if-eqz v0, :cond_0

    #@22
    const/4 v0, 0x1

    #@23
    :goto_0
    int-to-byte v0, v0

    #@24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    #@27
    .line 283
    iget v0, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    #@29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 284
    iget-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    #@2e
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@31
    .line 275
    return-void

    #@32
    .line 282
    :cond_0
    const/4 v0, 0x0

    #@33
    goto :goto_0
.end method
