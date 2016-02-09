.class public final Landroid/print/PrintJobInfo;
.super Ljava/lang/Object;
.source "PrintJobInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintJobInfo$Builder;,
        Landroid/print/PrintJobInfo$1;
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

.field private mState:I

.field private mStateReason:Ljava/lang/String;

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

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 750
    new-instance v0, Landroid/print/PrintJobInfo$1;

    #@2
    invoke-direct {v0}, Landroid/print/PrintJobInfo$1;-><init>()V

    #@5
    .line 749
    sput-object v0, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 195
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/print/PrintJobId;

    #@b
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    #@d
    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    #@13
    .line 197
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/print/PrinterId;

    #@19
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    #@1b
    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    #@21
    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v2

    #@25
    iput v2, p0, Landroid/print/PrintJobInfo;->mState:I

    #@27
    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v2

    #@2b
    iput v2, p0, Landroid/print/PrintJobInfo;->mAppId:I

    #@2d
    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    #@33
    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@36
    move-result-wide v4

    #@37
    iput-wide v4, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    #@39
    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v2

    #@3d
    iput v2, p0, Landroid/print/PrintJobInfo;->mCopies:I

    #@3f
    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mStateReason:Ljava/lang/String;

    #@45
    .line 205
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    #@48
    move-result-object v1

    #@49
    .line 206
    .local v1, "parcelables":[Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    #@4b
    .line 207
    array-length v2, v1

    #@4c
    new-array v2, v2, [Landroid/print/PageRange;

    #@4e
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@50
    .line 208
    const/4 v0, 0x0

    #@51
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@52
    if-ge v0, v2, :cond_0

    #@54
    .line 209
    iget-object v4, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@56
    aget-object v2, v1, v0

    #@58
    check-cast v2, Landroid/print/PageRange;

    #@5a
    aput-object v2, v4, v0

    #@5c
    .line 208
    add-int/lit8 v0, v0, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 212
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@62
    move-result-object v2

    #@63
    check-cast v2, Landroid/print/PrintAttributes;

    #@65
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    #@67
    .line 213
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@6a
    move-result-object v2

    #@6b
    check-cast v2, Landroid/print/PrintDocumentInfo;

    #@6d
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    #@6f
    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@72
    move-result v2

    #@73
    if-ne v2, v3, :cond_1

    #@75
    move v2, v3

    #@76
    :goto_1
    iput-boolean v2, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    #@78
    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@7b
    move-result-object v2

    #@7c
    iput-object v2, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@7e
    .line 194
    return-void

    #@7f
    .line 214
    :cond_1
    const/4 v2, 0x0

    #@80
    goto :goto_1
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
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 177
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    #@5
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    #@7
    .line 178
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    #@b
    .line 179
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    #@d
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    #@f
    .line 180
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    #@11
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    #@13
    .line 181
    iget v0, p1, Landroid/print/PrintJobInfo;->mState:I

    #@15
    iput v0, p0, Landroid/print/PrintJobInfo;->mState:I

    #@17
    .line 182
    iget v0, p1, Landroid/print/PrintJobInfo;->mAppId:I

    #@19
    iput v0, p0, Landroid/print/PrintJobInfo;->mAppId:I

    #@1b
    .line 183
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    #@1d
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    #@1f
    .line 184
    iget-wide v0, p1, Landroid/print/PrintJobInfo;->mCreationTime:J

    #@21
    iput-wide v0, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    #@23
    .line 185
    iget v0, p1, Landroid/print/PrintJobInfo;->mCopies:I

    #@25
    iput v0, p0, Landroid/print/PrintJobInfo;->mCopies:I

    #@27
    .line 186
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mStateReason:Ljava/lang/String;

    #@29
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mStateReason:Ljava/lang/String;

    #@2b
    .line 187
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@2d
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@2f
    .line 188
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    #@31
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    #@33
    .line 189
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    #@35
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    #@37
    .line 190
    iget-boolean v0, p1, Landroid/print/PrintJobInfo;->mCanceling:Z

    #@39
    iput-boolean v0, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    #@3b
    .line 191
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@3d
    iput-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@3f
    .line 176
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 640
    packed-switch p0, :pswitch_data_0

    #@3
    .line 663
    const-string/jumbo v0, "STATE_UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 642
    :pswitch_0
    const-string/jumbo v0, "STATE_CREATED"

    #@a
    return-object v0

    #@b
    .line 645
    :pswitch_1
    const-string/jumbo v0, "STATE_QUEUED"

    #@e
    return-object v0

    #@f
    .line 648
    :pswitch_2
    const-string/jumbo v0, "STATE_STARTED"

    #@12
    return-object v0

    #@13
    .line 651
    :pswitch_3
    const-string/jumbo v0, "STATE_BLOCKED"

    #@16
    return-object v0

    #@17
    .line 654
    :pswitch_4
    const-string/jumbo v0, "STATE_FAILED"

    #@1a
    return-object v0

    #@1b
    .line 657
    :pswitch_5
    const-string/jumbo v0, "STATE_COMPLETED"

    #@1e
    return-object v0

    #@1f
    .line 660
    :pswitch_6
    const-string/jumbo v0, "STATE_CANCELED"

    #@22
    return-object v0

    #@23
    .line 640
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
    .line 593
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAdvancedIntOption(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 563
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 564
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 566
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public getAdvancedOptions()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 577
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
    .line 548
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 549
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@7
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 551
    :cond_0
    return-object v1
.end method

.method public getAppId()I
    .locals 1

    #@0
    .prologue
    .line 336
    iget v0, p0, Landroid/print/PrintJobInfo;->mAppId:I

    #@2
    return v0
.end method

.method public getAttributes()Landroid/print/PrintAttributes;
    .locals 1

    #@0
    .prologue
    .line 468
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    #@2
    return-object v0
.end method

.method public getCopies()I
    .locals 1

    #@0
    .prologue
    .line 401
    iget v0, p0, Landroid/print/PrintJobInfo;->mCopies:I

    #@2
    return v0
.end method

.method public getCreationTime()J
    .locals 2

    #@0
    .prologue
    .line 378
    iget-wide v0, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    #@2
    return-wide v0
.end method

.method public getDocumentInfo()Landroid/print/PrintDocumentInfo;
    .locals 1

    #@0
    .prologue
    .line 490
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    #@2
    return-object v0
.end method

.method public getId()Landroid/print/PrintJobId;
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    #@2
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPages()[Landroid/print/PageRange;
    .locals 1

    #@0
    .prologue
    .line 448
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@2
    return-object v0
.end method

.method public getPrinterId()Landroid/print/PrinterId;
    .locals 1

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    #@2
    return-object v0
.end method

.method public getPrinterName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 314
    iget v0, p0, Landroid/print/PrintJobInfo;->mState:I

    #@2
    return v0
.end method

.method public getStateReason()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 427
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mStateReason:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasAdvancedOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 536
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
    .line 512
    iget-boolean v0, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    #@2
    return v0
.end method

.method public setAdvancedOptions(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 588
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@2
    .line 587
    return-void
.end method

.method public setAppId(I)V
    .locals 0
    .param p1, "appId"    # I

    #@0
    .prologue
    .line 347
    iput p1, p0, Landroid/print/PrintJobInfo;->mAppId:I

    #@2
    .line 346
    return-void
.end method

.method public setAttributes(Landroid/print/PrintAttributes;)V
    .locals 0
    .param p1, "attributes"    # Landroid/print/PrintAttributes;

    #@0
    .prologue
    .line 479
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    #@2
    .line 478
    return-void
.end method

.method public setCancelling(Z)V
    .locals 0
    .param p1, "cancelling"    # Z

    #@0
    .prologue
    .line 523
    iput-boolean p1, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    #@2
    .line 522
    return-void
.end method

.method public setCopies(I)V
    .locals 2
    .param p1, "copyCount"    # I

    #@0
    .prologue
    .line 412
    const/4 v0, 0x1

    #@1
    if-ge p1, v0, :cond_0

    #@3
    .line 413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "Copies must be more than one."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 415
    :cond_0
    iput p1, p0, Landroid/print/PrintJobInfo;->mCopies:I

    #@e
    .line 411
    return-void
.end method

.method public setCreationTime(J)V
    .locals 3
    .param p1, "creationTime"    # J

    #@0
    .prologue
    .line 389
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "creationTime must be non-negative."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 392
    :cond_0
    iput-wide p1, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    #@11
    .line 388
    return-void
.end method

.method public setDocumentInfo(Landroid/print/PrintDocumentInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/print/PrintDocumentInfo;

    #@0
    .prologue
    .line 501
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    #@2
    .line 500
    return-void
.end method

.method public setId(Landroid/print/PrintJobId;)V
    .locals 0
    .param p1, "id"    # Landroid/print/PrintJobId;

    #@0
    .prologue
    .line 235
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    #@2
    .line 234
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    #@0
    .prologue
    .line 255
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    #@2
    .line 254
    return-void
.end method

.method public setPages([Landroid/print/PageRange;)V
    .locals 0
    .param p1, "pageRanges"    # [Landroid/print/PageRange;

    #@0
    .prologue
    .line 459
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@2
    .line 458
    return-void
.end method

.method public setPrinterId(Landroid/print/PrinterId;)V
    .locals 0
    .param p1, "printerId"    # Landroid/print/PrinterId;

    #@0
    .prologue
    .line 275
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    #@2
    .line 274
    return-void
.end method

.method public setPrinterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "printerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 297
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    #@2
    .line 296
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    #@0
    .prologue
    .line 325
    iput p1, p0, Landroid/print/PrintJobInfo;->mState:I

    #@2
    .line 324
    return-void
.end method

.method public setStateReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateReason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 439
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mStateReason:Ljava/lang/String;

    #@2
    .line 438
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 369
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    #@2
    .line 368
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 618
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PrintJobInfo{"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 619
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
    .line 620
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
    .line 621
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
    .line 622
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
    .line 623
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
    .line 624
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
    .line 625
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
    .line 626
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
    .line 627
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    #@71
    invoke-virtual {v1}, Landroid/print/PrintAttributes;->toString()Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    .line 626
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 628
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
    .line 629
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    #@85
    invoke-virtual {v1}, Landroid/print/PrintDocumentInfo;->toString()Ljava/lang/String;

    #@88
    move-result-object v1

    #@89
    .line 628
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    .line 630
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
    .line 631
    const-string/jumbo v1, ", pages: "

    #@9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v1

    #@9f
    iget-object v3, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@a1
    if-eqz v3, :cond_0

    #@a3
    .line 632
    iget-object v2, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@a5
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@a8
    move-result-object v2

    #@a9
    .line 631
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    .line 633
    const-string/jumbo v1, ", hasAdvancedOptions: "

    #@af
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v2

    #@b3
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@b5
    if-eqz v1, :cond_3

    #@b7
    const/4 v1, 0x1

    #@b8
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@bb
    .line 634
    const-string/jumbo v1, "}"

    #@be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    .line 635
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v1

    #@c5
    return-object v1

    #@c6
    :cond_1
    move-object v1, v2

    #@c7
    .line 627
    goto :goto_0

    #@c8
    :cond_2
    move-object v1, v2

    #@c9
    .line 629
    goto :goto_1

    #@ca
    .line 633
    :cond_3
    const/4 v1, 0x0

    #@cb
    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 598
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    #@3
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@6
    .line 599
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    #@8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 600
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    #@d
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@10
    .line 601
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    #@12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    .line 602
    iget v1, p0, Landroid/print/PrintJobInfo;->mState:I

    #@17
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 603
    iget v1, p0, Landroid/print/PrintJobInfo;->mAppId:I

    #@1c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 604
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    #@21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@24
    .line 605
    iget-wide v2, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    #@26
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@29
    .line 606
    iget v1, p0, Landroid/print/PrintJobInfo;->mCopies:I

    #@2b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 607
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mStateReason:Ljava/lang/String;

    #@30
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@33
    .line 608
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    #@35
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    #@38
    .line 609
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    #@3a
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@3d
    .line 610
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    #@3f
    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@42
    .line 611
    iget-boolean v1, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    #@44
    if-eqz v1, :cond_0

    #@46
    const/4 v0, 0x1

    #@47
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    .line 612
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    #@4c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@4f
    .line 597
    return-void
.end method
