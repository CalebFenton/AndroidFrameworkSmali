.class public final Landroid/print/PrintJobInfo;
.super Ljava/lang/Object;
.source "PrintJobInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintJobInfo$1;,
        Landroid/print/PrintJobInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_ANY:I = -0x1

.field public static final STATE_ANY_ACTIVE:I = -0x3

.field public static final STATE_ANY_SCHEDULED:I = -0x4

.field public static final STATE_ANY_VISIBLE_TO_CLIENTS:I = -0x2

.field public static final STATE_BLOCKED:I = 0x4

.field public static final STATE_CANCELED:I = 0x7

.field public static final STATE_COMPLETED:I = 0x5

.field public static final STATE_CREATED:I = 0x1

.field public static final STATE_FAILED:I = 0x6

.field public static final STATE_QUEUED:I = 0x2

.field public static final STATE_STARTED:I = 0x3


# instance fields
.field private mAdvancedOptions:Landroid/os/Bundle;

.field private mAppId:I

.field private mAttributes:Landroid/print/PrintAttributes;

.field private mCanceling:Z

.field private mCopies:I

.field private mCreationTime:J

.field private mDocumentInfo:Landroid/print/PrintDocumentInfo;

.field private mId:Landroid/print/PrintJobId;

.field private mLabel:Ljava/lang/String;

.field private mPageRanges:[Landroid/print/PageRange;

.field private mPrinterId:Landroid/print/PrinterId;

.field private mPrinterName:Ljava/lang/String;

.field private mProgress:F

.field private mState:I

.field private mStatus:Ljava/lang/CharSequence;

.field private mStatusRes:I

.field private mStatusResAppPackageName:Ljava/lang/CharSequence;

.field private mTag:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/print/PrintJobInfo;Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/print/PrintJobInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/print/PrintJobInfo;->mCopies:I

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/print/PrintJobInfo;[Landroid/print/PageRange;)[Landroid/print/PageRange;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Landroid/print/PrintJobInfo;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/print/PrintJobInfo;->mProgress:F

    #@2
    return p1
.end method

.method static synthetic -set5(Landroid/print/PrintJobInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 873
    new-instance v0, Landroid/print/PrintJobInfo$1;

    #@2
    invoke-direct {v0}, Landroid/print/PrintJobInfo$1;-><init>()V

    #@5
    .line 872
    sput-object v0, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 201
    const/high16 v0, -0x40800000    # -1.0f

    #@5
    iput v0, p0, Landroid/print/PrintJobInfo;->mProgress:F

    #@7
    .line 200
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 227
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Landroid/print/PrintJobId;

    #@c
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    #@e
    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    #@14
    .line 229
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroid/print/PrinterId;

    #@1a
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    #@1c
    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    #@22
    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v2

    #@26
    iput v2, p0, Landroid/print/PrintJobInfo;->mState:I

    #@28
    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v2

    #@2c
    iput v2, p0, Landroid/print/PrintJobInfo;->mAppId:I

    #@2e
    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    #@34
    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@37
    move-result-wide v6

    #@38
    iput-wide v6, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    #@3a
    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v2

    #@3e
    iput v2, p0, Landroid/print/PrintJobInfo;->mCopies:I

    #@40
    .line 236
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    #@43
    move-result-object v1

    #@44
    .line 237
    .local v1, "parcelables":[Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    #@46
    .line 238
    array-length v2, v1

    #@47
    new-array v2, v2, [Landroid/print/PageRange;

    #@49
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@4b
    .line 239
    const/4 v0, 0x0

    #@4c
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@4d
    if-ge v0, v2, :cond_0

    #@4f
    .line 240
    iget-object v5, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@51
    aget-object v2, v1, v0

    #@53
    check-cast v2, Landroid/print/PageRange;

    #@55
    aput-object v2, v5, v0

    #@57
    .line 239
    add-int/lit8 v0, v0, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 243
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@5d
    move-result-object v2

    #@5e
    check-cast v2, Landroid/print/PrintAttributes;

    #@60
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    #@62
    .line 244
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@65
    move-result-object v2

    #@66
    check-cast v2, Landroid/print/PrintDocumentInfo;

    #@68
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    #@6a
    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@6d
    move-result v2

    #@6e
    iput v2, p0, Landroid/print/PrintJobInfo;->mProgress:F

    #@70
    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@73
    move-result-object v2

    #@74
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    #@76
    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@79
    move-result v2

    #@7a
    iput v2, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    #@7c
    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@7f
    move-result-object v2

    #@80
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    #@82
    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@85
    move-result v2

    #@86
    if-ne v2, v3, :cond_2

    #@88
    move v2, v3

    #@89
    :goto_1
    iput-boolean v2, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    #@8b
    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@8e
    move-result-object v2

    #@8f
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@91
    .line 252
    iget-object v2, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@93
    if-eqz v2, :cond_1

    #@95
    .line 253
    iget-object v2, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@97
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@9a
    move-result v2

    #@9b
    if-eqz v2, :cond_3

    #@9d
    :goto_2
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    #@a0
    .line 226
    :cond_1
    return-void

    #@a1
    :cond_2
    move v2, v4

    #@a2
    .line 249
    goto :goto_1

    #@a3
    :cond_3
    move v4, v3

    #@a4
    .line 253
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrintJobInfo;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/print/PrintJobInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/print/PrintJobInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/print/PrintJobInfo;

    #@0
    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 206
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    #@5
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    #@7
    .line 207
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    #@b
    .line 208
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    #@d
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    #@f
    .line 209
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    #@11
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    #@13
    .line 210
    iget v0, p1, Landroid/print/PrintJobInfo;->mState:I

    #@15
    iput v0, p0, Landroid/print/PrintJobInfo;->mState:I

    #@17
    .line 211
    iget v0, p1, Landroid/print/PrintJobInfo;->mAppId:I

    #@19
    iput v0, p0, Landroid/print/PrintJobInfo;->mAppId:I

    #@1b
    .line 212
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    #@1d
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    #@1f
    .line 213
    iget-wide v0, p1, Landroid/print/PrintJobInfo;->mCreationTime:J

    #@21
    iput-wide v0, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    #@23
    .line 214
    iget v0, p1, Landroid/print/PrintJobInfo;->mCopies:I

    #@25
    iput v0, p0, Landroid/print/PrintJobInfo;->mCopies:I

    #@27
    .line 215
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@29
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@2b
    .line 216
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    #@2d
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    #@2f
    .line 217
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    #@31
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    #@33
    .line 218
    iget v0, p1, Landroid/print/PrintJobInfo;->mProgress:F

    #@35
    iput v0, p0, Landroid/print/PrintJobInfo;->mProgress:F

    #@37
    .line 219
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    #@39
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    #@3b
    .line 220
    iget v0, p1, Landroid/print/PrintJobInfo;->mStatusRes:I

    #@3d
    iput v0, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    #@3f
    .line 221
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    #@41
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    #@43
    .line 222
    iget-boolean v0, p1, Landroid/print/PrintJobInfo;->mCanceling:Z

    #@45
    iput-boolean v0, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    #@47
    .line 223
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@49
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@4b
    .line 205
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 706
    packed-switch p0, :pswitch_data_0

    #@3
    .line 729
    const-string/jumbo v0, "STATE_UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 708
    :pswitch_0
    const-string/jumbo v0, "STATE_CREATED"

    #@a
    return-object v0

    #@b
    .line 711
    :pswitch_1
    const-string/jumbo v0, "STATE_QUEUED"

    #@e
    return-object v0

    #@f
    .line 714
    :pswitch_2
    const-string/jumbo v0, "STATE_STARTED"

    #@12
    return-object v0

    #@13
    .line 717
    :pswitch_3
    const-string/jumbo v0, "STATE_BLOCKED"

    #@16
    return-object v0

    #@17
    .line 720
    :pswitch_4
    const-string/jumbo v0, "STATE_FAILED"

    #@1a
    return-object v0

    #@1b
    .line 723
    :pswitch_5
    const-string/jumbo v0, "STATE_COMPLETED"

    #@1e
    return-object v0

    #@1f
    .line 726
    :pswitch_6
    const-string/jumbo v0, "STATE_CANCELED"

    #@22
    return-object v0

    #@23
    .line 706
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 650
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAdvancedIntOption(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 620
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 621
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 623
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public getAdvancedOptions()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 634
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getAdvancedStringOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 605
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 606
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@7
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 608
    :cond_0
    return-object v1
.end method

.method public getAppId()I
    .locals 1

    #@0
    .prologue
    .line 417
    iget v0, p0, Landroid/print/PrintJobInfo;->mAppId:I

    #@2
    return v0
.end method

.method public getAttributes()Landroid/print/PrintAttributes;
    .locals 1

    #@0
    .prologue
    .line 525
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    #@2
    return-object v0
.end method

.method public getCopies()I
    .locals 1

    #@0
    .prologue
    .line 482
    iget v0, p0, Landroid/print/PrintJobInfo;->mCopies:I

    #@2
    return v0
.end method

.method public getCreationTime()J
    .locals 2

    #@0
    .prologue
    .line 459
    iget-wide v0, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    #@2
    return-wide v0
.end method

.method public getDocumentInfo()Landroid/print/PrintDocumentInfo;
    .locals 1

    #@0
    .prologue
    .line 547
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    #@2
    return-object v0
.end method

.method public getId()Landroid/print/PrintJobId;
    .locals 1

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    #@2
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPages()[Landroid/print/PageRange;
    .locals 1

    #@0
    .prologue
    .line 505
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@2
    return-object v0
.end method

.method public getPrinterId()Landroid/print/PrinterId;
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    #@2
    return-object v0
.end method

.method public getPrinterName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getProgress()F
    .locals 1

    #@0
    .prologue
    .line 742
    iget v0, p0, Landroid/print/PrintJobInfo;->mProgress:F

    #@2
    return v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 353
    iget v0, p0, Landroid/print/PrintJobInfo;->mState:I

    #@2
    return v0
.end method

.method public getStatus(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 755
    iget v1, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 756
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    #@6
    return-object v1

    #@7
    .line 759
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    #@9
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    #@10
    move-result-object v1

    #@11
    .line 760
    iget v2, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    #@13
    .line 759
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 761
    :catch_0
    move-exception v0

    #@19
    .line 762
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@1a
    return-object v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasAdvancedOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 593
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isCancelling()Z
    .locals 1

    #@0
    .prologue
    .line 569
    iget-boolean v0, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    #@2
    return v0
.end method

.method public setAdvancedOptions(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 645
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@2
    .line 644
    return-void
.end method

.method public setAppId(I)V
    .locals 0
    .param p1, "appId"    # I

    #@0
    .prologue
    .line 428
    iput p1, p0, Landroid/print/PrintJobInfo;->mAppId:I

    #@2
    .line 427
    return-void
.end method

.method public setAttributes(Landroid/print/PrintAttributes;)V
    .locals 0
    .param p1, "attributes"    # Landroid/print/PrintAttributes;

    #@0
    .prologue
    .line 536
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    #@2
    .line 535
    return-void
.end method

.method public setCancelling(Z)V
    .locals 0
    .param p1, "cancelling"    # Z

    #@0
    .prologue
    .line 580
    iput-boolean p1, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    #@2
    .line 579
    return-void
.end method

.method public setCopies(I)V
    .locals 2
    .param p1, "copyCount"    # I

    #@0
    .prologue
    .line 493
    const/4 v0, 0x1

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Copies must be more than one."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 496
    :cond_0
    iput p1, p0, Landroid/print/PrintJobInfo;->mCopies:I

    #@e
    .line 492
    return-void
.end method

.method public setCreationTime(J)V
    .locals 3
    .param p1, "creationTime"    # J

    #@0
    .prologue
    .line 470
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "creationTime must be non-negative."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 473
    :cond_0
    iput-wide p1, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    #@11
    .line 469
    return-void
.end method

.method public setDocumentInfo(Landroid/print/PrintDocumentInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/print/PrintDocumentInfo;

    #@0
    .prologue
    .line 558
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    #@2
    .line 557
    return-void
.end method

.method public setId(Landroid/print/PrintJobId;)V
    .locals 0
    .param p1, "id"    # Landroid/print/PrintJobId;

    #@0
    .prologue
    .line 274
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    #@2
    .line 273
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    #@0
    .prologue
    .line 294
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    #@2
    .line 293
    return-void
.end method

.method public setPages([Landroid/print/PageRange;)V
    .locals 0
    .param p1, "pageRanges"    # [Landroid/print/PageRange;

    #@0
    .prologue
    .line 516
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@2
    .line 515
    return-void
.end method

.method public setPrinterId(Landroid/print/PrinterId;)V
    .locals 0
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 314
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    #@2
    .line 313
    return-void
.end method

.method public setPrinterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "printerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 336
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    #@2
    .line 335
    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    #@0
    .prologue
    .line 375
    const/4 v0, 0x0

    #@1
    const/high16 v1, 0x3f800000    # 1.0f

    #@3
    const-string/jumbo v2, "progress"

    #@6
    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    #@9
    .line 377
    iput p1, p0, Landroid/print/PrintJobInfo;->mProgress:F

    #@b
    .line 374
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    .line 364
    iput p1, p0, Landroid/print/PrintJobInfo;->mState:I

    #@2
    .line 363
    return-void
.end method

.method public setStatus(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "appPackageName"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 403
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    #@3
    .line 405
    iput p1, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    #@5
    .line 406
    iput-object p2, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    #@7
    .line 402
    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 388
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    #@3
    .line 389
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    #@6
    .line 391
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    #@8
    .line 387
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 450
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    #@2
    .line 449
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 678
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PrintJobInfo{"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 679
    const-string/jumbo v1, "label: "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-object v3, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 680
    const-string/jumbo v1, ", id: "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget-object v3, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    #@21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    .line 681
    const-string/jumbo v1, ", state: "

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    iget v3, p0, Landroid/print/PrintJobInfo;->mState:I

    #@2d
    invoke-static {v3}, Landroid/print/PrintJobInfo;->stateToString(I)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 682
    const-string/jumbo v1, ", printer: "

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    iget-object v3, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    #@3d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    .line 683
    const-string/jumbo v1, ", tag: "

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    iget-object v3, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    #@49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 684
    const-string/jumbo v1, ", creationTime: "

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    iget-wide v4, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    #@55
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@58
    .line 685
    const-string/jumbo v1, ", copies: "

    #@5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    iget v3, p0, Landroid/print/PrintJobInfo;->mCopies:I

    #@61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    .line 686
    const-string/jumbo v1, ", attributes: "

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    #@6d
    if-eqz v1, :cond_1

    #@6f
    .line 687
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    #@71
    invoke-virtual {v1}, Landroid/print/PrintAttributes;->toString()Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    .line 686
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 688
    const-string/jumbo v1, ", documentInfo: "

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v3

    #@7f
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    #@81
    if-eqz v1, :cond_2

    #@83
    .line 689
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    #@85
    invoke-virtual {v1}, Landroid/print/PrintDocumentInfo;->toString()Ljava/lang/String;

    #@88
    move-result-object v1

    #@89
    .line 688
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    .line 690
    const-string/jumbo v1, ", cancelling: "

    #@8f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v1

    #@93
    iget-boolean v3, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    #@95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@98
    .line 691
    const-string/jumbo v1, ", pages: "

    #@9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v3

    #@9f
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@a1
    if-eqz v1, :cond_3

    #@a3
    .line 692
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@a5
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@a8
    move-result-object v1

    #@a9
    .line 691
    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    .line 693
    const-string/jumbo v1, ", hasAdvancedOptions: "

    #@af
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v3

    #@b3
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@b5
    if-eqz v1, :cond_4

    #@b7
    const/4 v1, 0x1

    #@b8
    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@bb
    .line 694
    const-string/jumbo v1, ", progress: "

    #@be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v1

    #@c2
    iget v3, p0, Landroid/print/PrintJobInfo;->mProgress:F

    #@c4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@c7
    .line 695
    const-string/jumbo v1, ", status: "

    #@ca
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v3

    #@ce
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    #@d0
    if-eqz v1, :cond_5

    #@d2
    .line 696
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    #@d4
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@d7
    move-result-object v1

    #@d8
    .line 695
    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    .line 697
    const-string/jumbo v1, ", statusRes: "

    #@de
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v1

    #@e2
    iget v3, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    #@e4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e7
    .line 698
    const-string/jumbo v1, ", statusResAppPackageName: "

    #@ea
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v1

    #@ee
    iget-object v3, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    #@f0
    if-eqz v3, :cond_0

    #@f2
    .line 699
    iget-object v2, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    #@f4
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@f7
    move-result-object v2

    #@f8
    .line 698
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    .line 700
    const-string/jumbo v1, "}"

    #@fe
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    .line 701
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v1

    #@105
    return-object v1

    #@106
    :cond_1
    move-object v1, v2

    #@107
    .line 687
    goto/16 :goto_0

    #@109
    :cond_2
    move-object v1, v2

    #@10a
    .line 689
    goto/16 :goto_1

    #@10c
    :cond_3
    move-object v1, v2

    #@10d
    .line 692
    goto :goto_2

    #@10e
    .line 693
    :cond_4
    const/4 v1, 0x0

    #@10f
    goto :goto_3

    #@110
    :cond_5
    move-object v1, v2

    #@111
    .line 696
    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 655
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    #@3
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@6
    .line 656
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    #@8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 657
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    #@d
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@10
    .line 658
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    #@12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 659
    iget v1, p0, Landroid/print/PrintJobInfo;->mState:I

    #@17
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 660
    iget v1, p0, Landroid/print/PrintJobInfo;->mAppId:I

    #@1c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 661
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    #@21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@24
    .line 662
    iget-wide v2, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    #@26
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@29
    .line 663
    iget v1, p0, Landroid/print/PrintJobInfo;->mCopies:I

    #@2b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 664
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@30
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    #@33
    .line 665
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    #@35
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@38
    .line 666
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    #@3a
    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@3d
    .line 667
    iget v1, p0, Landroid/print/PrintJobInfo;->mProgress:F

    #@3f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@42
    .line 668
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    #@44
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@47
    .line 669
    iget v1, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    #@49
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4c
    .line 670
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    #@4e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@51
    .line 671
    iget-boolean v1, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    #@53
    if-eqz v1, :cond_0

    #@55
    const/4 v0, 0x1

    #@56
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@59
    .line 672
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@5b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@5e
    .line 654
    return-void
.end method
