.class public final Landroid/print/PrintJobInfo;
.super Ljava/lang/Object;
.source "PrintJobInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintJobInfo$Builder;,
        Landroid/print/PrintJobInfo$State;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o STATE_ANY:I = -0x1

.field public static final greylist-max-o STATE_ANY_ACTIVE:I = -0x3

.field public static final greylist-max-o STATE_ANY_SCHEDULED:I = -0x4

.field public static final greylist-max-o STATE_ANY_VISIBLE_TO_CLIENTS:I = -0x2

.field public static final whitelist STATE_BLOCKED:I = 0x4

.field public static final whitelist STATE_CANCELED:I = 0x7

.field public static final whitelist STATE_COMPLETED:I = 0x5

.field public static final whitelist STATE_CREATED:I = 0x1

.field public static final whitelist STATE_FAILED:I = 0x6

.field public static final whitelist STATE_QUEUED:I = 0x2

.field public static final whitelist STATE_STARTED:I = 0x3


# instance fields
.field private greylist-max-o mAdvancedOptions:Landroid/os/Bundle;

.field private greylist-max-o mAppId:I

.field private greylist-max-o mAttributes:Landroid/print/PrintAttributes;

.field private greylist-max-o mCanceling:Z

.field private greylist-max-o mCopies:I

.field private greylist-max-o mCreationTime:J

.field private greylist-max-o mDocumentInfo:Landroid/print/PrintDocumentInfo;

.field private greylist-max-o mId:Landroid/print/PrintJobId;

.field private greylist-max-o mLabel:Ljava/lang/String;

.field private greylist-max-o mPageRanges:[Landroid/print/PageRange;

.field private greylist-max-o mPrinterId:Landroid/print/PrinterId;

.field private greylist-max-o mPrinterName:Ljava/lang/String;

.field private greylist-max-o mProgress:F

.field private greylist-max-o mState:I

.field private greylist-max-o mStatus:Ljava/lang/CharSequence;

.field private greylist-max-o mStatusRes:I

.field private greylist-max-o mStatusResAppPackageName:Ljava/lang/CharSequence;

.field private greylist-max-o mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdvancedOptions(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAdvancedOptions(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAttributes(Landroid/print/PrintJobInfo;Landroid/print/PrintAttributes;)V
    .registers 2

    iput-object p1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCopies(Landroid/print/PrintJobInfo;I)V
    .registers 2

    iput p1, p0, Landroid/print/PrintJobInfo;->mCopies:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPageRanges(Landroid/print/PrintJobInfo;[Landroid/print/PageRange;)V
    .registers 2

    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProgress(Landroid/print/PrintJobInfo;F)V
    .registers 2

    iput p1, p0, Landroid/print/PrintJobInfo;->mProgress:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStatus(Landroid/print/PrintJobInfo;Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 884
    new-instance v0, Landroid/print/PrintJobInfo$1;

    invoke-direct {v0}, Landroid/print/PrintJobInfo$1;-><init>()V

    sput-object v0, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/print/PrintJobInfo;->mProgress:F

    .line 209
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    const-class v0, Landroid/print/PrintJobId;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobId;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    .line 236
    const-class v0, Landroid/print/PrinterId;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterId;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintJobInfo;->mState:I

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintJobInfo;->mAppId:I

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintJobInfo;->mCopies:I

    .line 243
    const-class v0, Landroid/print/PageRange;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    .line 244
    .local v0, "parcelables":[Landroid/os/Parcelable;
    if-eqz v0, :cond_60

    .line 245
    array-length v2, v0

    new-array v2, v2, [Landroid/print/PageRange;

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    .line 246
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_52
    array-length v3, v0

    if-ge v2, v3, :cond_60

    .line 247
    iget-object v3, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    aget-object v4, v0, v2

    check-cast v4, Landroid/print/PageRange;

    aput-object v4, v3, v2

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 250
    .end local v2    # "i":I
    :cond_60
    const-class v2, Landroid/print/PrintAttributes;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintAttributes;

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    .line 251
    const-class v2, Landroid/print/PrintDocumentInfo;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintDocumentInfo;

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/print/PrintJobInfo;->mProgress:F

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_95

    move v2, v3

    goto :goto_96

    :cond_95
    const/4 v2, 0x0

    :goto_96
    iput-boolean v2, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    .line 259
    iget-object v2, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    if-eqz v2, :cond_ac

    .line 260
    iget-object v2, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 262
    :cond_ac
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/print/PrintJobInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/print/PrintJobInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/print/PrintJobInfo;)V
    .registers 4
    .param p1, "other"    # Landroid/print/PrintJobInfo;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    .line 214
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    .line 215
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    .line 216
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    .line 217
    iget v0, p1, Landroid/print/PrintJobInfo;->mState:I

    iput v0, p0, Landroid/print/PrintJobInfo;->mState:I

    .line 218
    iget v0, p1, Landroid/print/PrintJobInfo;->mAppId:I

    iput v0, p0, Landroid/print/PrintJobInfo;->mAppId:I

    .line 219
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    .line 220
    iget-wide v0, p1, Landroid/print/PrintJobInfo;->mCreationTime:J

    iput-wide v0, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    .line 221
    iget v0, p1, Landroid/print/PrintJobInfo;->mCopies:I

    iput v0, p0, Landroid/print/PrintJobInfo;->mCopies:I

    .line 222
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    .line 223
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    .line 224
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    .line 225
    iget v0, p1, Landroid/print/PrintJobInfo;->mProgress:F

    iput v0, p0, Landroid/print/PrintJobInfo;->mProgress:F

    .line 226
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    .line 227
    iget v0, p1, Landroid/print/PrintJobInfo;->mStatusRes:I

    iput v0, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    .line 228
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    .line 229
    iget-boolean v0, p1, Landroid/print/PrintJobInfo;->mCanceling:Z

    iput-boolean v0, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    .line 230
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    .line 231
    return-void
.end method

.method public static greylist-max-o stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 718
    packed-switch p0, :pswitch_data_1c

    .line 741
    const-string v0, "STATE_UNKNOWN"

    return-object v0

    .line 738
    :pswitch_6
    const-string v0, "STATE_CANCELED"

    return-object v0

    .line 732
    :pswitch_9
    const-string v0, "STATE_FAILED"

    return-object v0

    .line 735
    :pswitch_c
    const-string v0, "STATE_COMPLETED"

    return-object v0

    .line 729
    :pswitch_f
    const-string v0, "STATE_BLOCKED"

    return-object v0

    .line 726
    :pswitch_12
    const-string v0, "STATE_STARTED"

    return-object v0

    .line 723
    :pswitch_15
    const-string v0, "STATE_QUEUED"

    return-object v0

    .line 720
    :pswitch_18
    const-string v0, "STATE_CREATED"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAdvancedIntOption(Ljava/lang/String;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 631
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 632
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 634
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getAdvancedOptions()Landroid/os/Bundle;
    .registers 2

    .line 646
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getAdvancedStringOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 618
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 619
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 621
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getAppId()I
    .registers 2

    .line 424
    iget v0, p0, Landroid/print/PrintJobInfo;->mAppId:I

    return v0
.end method

.method public whitelist getAttributes()Landroid/print/PrintAttributes;
    .registers 2

    .line 532
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    return-object v0
.end method

.method public whitelist getCopies()I
    .registers 2

    .line 489
    iget v0, p0, Landroid/print/PrintJobInfo;->mCopies:I

    return v0
.end method

.method public whitelist getCreationTime()J
    .registers 3

    .line 466
    iget-wide v0, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    return-wide v0
.end method

.method public greylist getDocumentInfo()Landroid/print/PrintDocumentInfo;
    .registers 2

    .line 555
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    return-object v0
.end method

.method public whitelist getId()Landroid/print/PrintJobId;
    .registers 2

    .line 270
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/String;
    .registers 2

    .line 290
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPages()[Landroid/print/PageRange;
    .registers 2

    .line 512
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    return-object v0
.end method

.method public whitelist getPrinterId()Landroid/print/PrinterId;
    .registers 2

    .line 310
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    return-object v0
.end method

.method public greylist-max-o getPrinterName()Ljava/lang/String;
    .registers 2

    .line 332
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProgress()F
    .registers 2

    .line 754
    iget v0, p0, Landroid/print/PrintJobInfo;->mProgress:F

    return v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 360
    iget v0, p0, Landroid/print/PrintJobInfo;->mState:I

    return v0
.end method

.method public blacklist getStatus(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 767
    iget v0, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    if-nez v0, :cond_7

    .line 768
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    return-object v0

    .line 771
    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    .line 772
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_17} :catch_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_17} :catch_18

    .line 771
    return-object v0

    .line 773
    :catch_18
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o getTag()Ljava/lang/String;
    .registers 2

    .line 446
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist hasAdvancedOption(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 608
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o isCancelling()Z
    .registers 2

    .line 577
    iget-boolean v0, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    return v0
.end method

.method public greylist-max-o setAdvancedOptions(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "options"    # Landroid/os/Bundle;

    .line 657
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    .line 658
    return-void
.end method

.method public greylist-max-o setAppId(I)V
    .registers 2
    .param p1, "appId"    # I

    .line 435
    iput p1, p0, Landroid/print/PrintJobInfo;->mAppId:I

    .line 436
    return-void
.end method

.method public greylist-max-o setAttributes(Landroid/print/PrintAttributes;)V
    .registers 2
    .param p1, "attributes"    # Landroid/print/PrintAttributes;

    .line 543
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    .line 544
    return-void
.end method

.method public greylist-max-o setCancelling(Z)V
    .registers 2
    .param p1, "cancelling"    # Z

    .line 588
    iput-boolean p1, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    .line 589
    return-void
.end method

.method public greylist-max-o setCopies(I)V
    .registers 4
    .param p1, "copyCount"    # I

    .line 500
    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    .line 503
    iput p1, p0, Landroid/print/PrintJobInfo;->mCopies:I

    .line 504
    return-void

    .line 501
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Copies must be more than one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setCreationTime(J)V
    .registers 5
    .param p1, "creationTime"    # J

    .line 477
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 480
    iput-wide p1, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    .line 481
    return-void

    .line 478
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "creationTime must be non-negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setDocumentInfo(Landroid/print/PrintDocumentInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/print/PrintDocumentInfo;

    .line 566
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    .line 567
    return-void
.end method

.method public greylist-max-o setId(Landroid/print/PrintJobId;)V
    .registers 2
    .param p1, "id"    # Landroid/print/PrintJobId;

    .line 281
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    .line 282
    return-void
.end method

.method public greylist-max-o setLabel(Ljava/lang/String;)V
    .registers 2
    .param p1, "label"    # Ljava/lang/String;

    .line 301
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public greylist-max-o setPages([Landroid/print/PageRange;)V
    .registers 2
    .param p1, "pageRanges"    # [Landroid/print/PageRange;

    .line 523
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    .line 524
    return-void
.end method

.method public greylist-max-o setPrinterId(Landroid/print/PrinterId;)V
    .registers 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .line 321
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    .line 322
    return-void
.end method

.method public greylist-max-o setPrinterName(Ljava/lang/String;)V
    .registers 2
    .param p1, "printerName"    # Ljava/lang/String;

    .line 343
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public greylist-max-o setProgress(F)V
    .registers 5
    .param p1, "progress"    # F

    .line 382
    const/high16 v0, 0x3f800000    # 1.0f

    const-string/jumbo v1, "progress"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 384
    iput p1, p0, Landroid/print/PrintJobInfo;->mProgress:F

    .line 385
    return-void
.end method

.method public greylist-max-o setState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 371
    iput p1, p0, Landroid/print/PrintJobInfo;->mState:I

    .line 372
    return-void
.end method

.method public greylist-max-o setStatus(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "appPackageName"    # Ljava/lang/CharSequence;

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    .line 412
    iput p1, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    .line 413
    iput-object p2, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    .line 414
    return-void
.end method

.method public greylist-max-o setStatus(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "status"    # Ljava/lang/CharSequence;

    .line 395
    const/4 v0, 0x0

    iput v0, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    .line 398
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    .line 399
    return-void
.end method

.method public greylist-max-o setTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 457
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    .line 458
    return-void
.end method

.method public blacklist shouldStayAwake()Z
    .registers 3

    .line 597
    iget-boolean v0, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    if-nez v0, :cond_11

    iget v0, p0, Landroid/print/PrintJobInfo;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    iget v0, p0, Landroid/print/PrintJobInfo;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 690
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PrintJobInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const-string/jumbo v1, "label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 693
    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintJobInfo;->mState:I

    invoke-static {v2}, Landroid/print/PrintJobInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", printer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    const-string v1, ", tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", creationTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    const-string v1, ", copies: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintJobInfo;->mCopies:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", attributes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    const/4 v3, 0x0

    if-eqz v2, :cond_8d

    .line 699
    iget-object v2, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v2}, Landroid/print/PrintAttributes;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8e

    :cond_8d
    move-object v2, v3

    :goto_8e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", documentInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    if-eqz v2, :cond_af

    .line 701
    iget-object v2, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    invoke-virtual {v2}, Landroid/print/PrintDocumentInfo;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_b0

    :cond_af
    move-object v2, v3

    :goto_b0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 700
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", cancelling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", pages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    if-eqz v2, :cond_e9

    .line 704
    iget-object v2, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_ea

    :cond_e9
    move-object v2, v3

    :goto_ea
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hasAdvancedOptions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    if-eqz v2, :cond_106

    const/4 v2, 0x1

    goto :goto_107

    :cond_106
    const/4 v2, 0x0

    :goto_107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintJobInfo;->mProgress:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    if-eqz v2, :cond_140

    .line 708
    iget-object v2, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_141

    :cond_140
    move-object v2, v3

    :goto_141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", statusRes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", statusResAppPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_17a

    .line 711
    iget-object v2, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_17b

    :cond_17a
    nop

    :goto_17b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 667
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 668
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 670
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 671
    iget v0, p0, Landroid/print/PrintJobInfo;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    iget v0, p0, Landroid/print/PrintJobInfo;->mAppId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 673
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 674
    iget-wide v0, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 675
    iget v0, p0, Landroid/print/PrintJobInfo;->mCopies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 677
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 678
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 679
    iget v0, p0, Landroid/print/PrintJobInfo;->mProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 680
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 681
    iget v0, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 683
    iget-boolean v0, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 685
    return-void
.end method
