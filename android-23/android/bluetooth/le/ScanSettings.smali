.class public final Landroid/bluetooth/le/ScanSettings;
.super Ljava/lang/Object;
.source "ScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/ScanSettings$Builder;,
        Landroid/bluetooth/le/ScanSettings$1;
    }
.end annotation


# static fields
.field public static final CALLBACK_TYPE_ALL_MATCHES:I = 0x1

.field public static final CALLBACK_TYPE_FIRST_MATCH:I = 0x2

.field public static final CALLBACK_TYPE_MATCH_LOST:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/le/ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_MODE_AGGRESSIVE:I = 0x1

.field public static final MATCH_MODE_STICKY:I = 0x2

.field public static final MATCH_NUM_FEW_ADVERTISEMENT:I = 0x2

.field public static final MATCH_NUM_MAX_ADVERTISEMENT:I = 0x3

.field public static final MATCH_NUM_ONE_ADVERTISEMENT:I = 0x1

.field public static final SCAN_MODE_BALANCED:I = 0x1

.field public static final SCAN_MODE_LOW_LATENCY:I = 0x2

.field public static final SCAN_MODE_LOW_POWER:I = 0x0

.field public static final SCAN_MODE_OPPORTUNISTIC:I = -0x1

.field public static final SCAN_RESULT_TYPE_ABBREVIATED:I = 0x1

.field public static final SCAN_RESULT_TYPE_FULL:I


# instance fields
.field private mCallbackType:I

.field private mMatchMode:I

.field private mNumOfMatchesPerFilter:I

.field private mReportDelayMillis:J

.field private mScanMode:I

.field private mScanResultType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 209
    new-instance v0, Landroid/bluetooth/le/ScanSettings$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$1;-><init>()V

    #@5
    sput-object v0, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method private constructor <init>(IIIJII)V
    .locals 0
    .param p1, "scanMode"    # I
    .param p2, "callbackType"    # I
    .param p3, "scanResultType"    # I
    .param p4, "reportDelayMillis"    # J
    .param p6, "matchMode"    # I
    .param p7, "numOfMatchesPerFilter"    # I

    #@0
    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 176
    iput p1, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    #@5
    .line 177
    iput p2, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    #@7
    .line 178
    iput p3, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    #@9
    .line 179
    iput-wide p4, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    #@b
    .line 180
    iput p7, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    #@d
    .line 181
    iput p6, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    #@f
    .line 175
    return-void
.end method

.method synthetic constructor <init>(IIIJIILandroid/bluetooth/le/ScanSettings;)V
    .locals 0
    .param p1, "scanMode"    # I
    .param p2, "callbackType"    # I
    .param p3, "scanResultType"    # I
    .param p4, "reportDelayMillis"    # J
    .param p6, "matchMode"    # I
    .param p7, "numOfMatchesPerFilter"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p7}, Landroid/bluetooth/le/ScanSettings;-><init>(IIIJII)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    #@9
    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    #@f
    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    #@15
    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    #@1b
    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    #@21
    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    #@27
    .line 184
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/ScanSettings;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanSettings;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 205
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCallbackType()I
    .locals 1

    #@0
    .prologue
    .line 146
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    #@2
    return v0
.end method

.method public getMatchMode()I
    .locals 1

    #@0
    .prologue
    .line 157
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    #@2
    return v0
.end method

.method public getNumOfMatches()I
    .locals 1

    #@0
    .prologue
    .line 164
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    #@2
    return v0
.end method

.method public getReportDelayMillis()J
    .locals 2

    #@0
    .prologue
    .line 171
    iget-wide v0, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    #@2
    return-wide v0
.end method

.method public getScanMode()I
    .locals 1

    #@0
    .prologue
    .line 142
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    #@2
    return v0
.end method

.method public getScanResultType()I
    .locals 1

    #@0
    .prologue
    .line 150
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 195
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 196
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 197
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 198
    iget-wide v0, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 199
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 200
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 194
    return-void
.end method
