.class Landroid/mtp/MtpPropertyList;
.super Ljava/lang/Object;
.source "MtpPropertyList.java"


# instance fields
.field private mCount:I

.field public final mDataTypes:[I

.field public mLongValues:[J

.field private final mMaxCount:I

.field public final mObjectHandles:[I

.field public final mPropertyCodes:[I

.field public mResult:I

.field public mStringValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "maxCount"    # I
    .param p2, "result"    # I

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput p1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    #@5
    .line 46
    iput p2, p0, Landroid/mtp/MtpPropertyList;->mResult:I

    #@7
    .line 47
    new-array v0, p1, [I

    #@9
    iput-object v0, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    #@b
    .line 48
    new-array v0, p1, [I

    #@d
    iput-object v0, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    #@f
    .line 49
    new-array v0, p1, [I

    #@11
    iput-object v0, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    #@13
    .line 44
    return-void
.end method


# virtual methods
.method public append(IIIJ)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "type"    # I
    .param p4, "value"    # J

    #@0
    .prologue
    .line 54
    iget v0, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    #@6
    .line 55
    .local v0, "index":I
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    #@8
    if-nez v1, :cond_0

    #@a
    .line 56
    iget v1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    #@c
    new-array v1, v1, [J

    #@e
    iput-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    #@10
    .line 58
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    #@12
    aput p1, v1, v0

    #@14
    .line 59
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    #@16
    aput p2, v1, v0

    #@18
    .line 60
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    #@1a
    aput p3, v1, v0

    #@1c
    .line 61
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    #@1e
    aput-wide p4, v1, v0

    #@20
    .line 53
    return-void
.end method

.method public append(IILjava/lang/String;)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    iget v0, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    #@6
    .line 66
    .local v0, "index":I
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 67
    iget v1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    #@c
    new-array v1, v1, [Ljava/lang/String;

    #@e
    iput-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    #@10
    .line 69
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    #@12
    aput p1, v1, v0

    #@14
    .line 70
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    #@16
    aput p2, v1, v0

    #@18
    .line 71
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    #@1a
    const v2, 0xffff

    #@1d
    aput v2, v1, v0

    #@1f
    .line 72
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    #@21
    aput-object p3, v1, v0

    #@23
    .line 64
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    #@0
    .prologue
    .line 76
    iput p1, p0, Landroid/mtp/MtpPropertyList;->mResult:I

    #@2
    .line 75
    return-void
.end method
