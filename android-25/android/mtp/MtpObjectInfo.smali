.class public final Landroid/mtp/MtpObjectInfo;
.super Ljava/lang/Object;
.source "MtpObjectInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpObjectInfo$Builder;
    }
.end annotation


# instance fields
.field private mAssociationDesc:I

.field private mAssociationType:I

.field private mCompressedSize:I

.field private mDateCreated:J

.field private mDateModified:J

.field private mFormat:I

.field private mHandle:I

.field private mImagePixDepth:I

.field private mImagePixHeight:I

.field private mImagePixWidth:I

.field private mKeywords:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mParent:I

.field private mProtectionStatus:I

.field private mSequenceNumber:I

.field private mStorageId:I

.field private mThumbCompressedSize:I

.field private mThumbFormat:I

.field private mThumbPixHeight:I

.field private mThumbPixWidth:I


# direct methods
.method static synthetic -get0(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mAssociationDesc:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mAssociationType:I

    #@2
    return v0
.end method

.method static synthetic -get10(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get11(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mParent:I

    #@2
    return v0
.end method

.method static synthetic -get12(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mProtectionStatus:I

    #@2
    return v0
.end method

.method static synthetic -get13(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    #@2
    return v0
.end method

.method static synthetic -get14(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mStorageId:I

    #@2
    return v0
.end method

.method static synthetic -get15(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    #@2
    return v0
.end method

.method static synthetic -get16(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbFormat:I

    #@2
    return v0
.end method

.method static synthetic -get17(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    #@2
    return v0
.end method

.method static synthetic -get18(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/mtp/MtpObjectInfo;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/mtp/MtpObjectInfo;->mDateCreated:J

    #@2
    return-wide v0
.end method

.method static synthetic -get4(Landroid/mtp/MtpObjectInfo;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/mtp/MtpObjectInfo;->mDateModified:J

    #@2
    return-wide v0
.end method

.method static synthetic -get5(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mFormat:I

    #@2
    return v0
.end method

.method static synthetic -get6(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    #@2
    return v0
.end method

.method static synthetic -get7(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    #@2
    return v0
.end method

.method static synthetic -get8(Landroid/mtp/MtpObjectInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    #@2
    return v0
.end method

.method static synthetic -get9(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo;->mKeywords:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mAssociationDesc:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mAssociationType:I

    #@2
    return p1
.end method

.method static synthetic -set10(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/mtp/MtpObjectInfo;->mKeywords:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set11(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/mtp/MtpObjectInfo;->mName:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set12(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mParent:I

    #@2
    return p1
.end method

.method static synthetic -set13(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mProtectionStatus:I

    #@2
    return p1
.end method

.method static synthetic -set14(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    #@2
    return p1
.end method

.method static synthetic -set15(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mStorageId:I

    #@2
    return p1
.end method

.method static synthetic -set16(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    #@2
    return p1
.end method

.method static synthetic -set17(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mThumbFormat:I

    #@2
    return p1
.end method

.method static synthetic -set18(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    #@2
    return p1
.end method

.method static synthetic -set19(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/mtp/MtpObjectInfo;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/mtp/MtpObjectInfo;->mDateCreated:J

    #@2
    return-wide p1
.end method

.method static synthetic -set4(Landroid/mtp/MtpObjectInfo;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/mtp/MtpObjectInfo;->mDateModified:J

    #@2
    return-wide p1
.end method

.method static synthetic -set5(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mFormat:I

    #@2
    return p1
.end method

.method static synthetic -set6(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mHandle:I

    #@2
    return p1
.end method

.method static synthetic -set7(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    #@2
    return p1
.end method

.method static synthetic -set8(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    #@2
    return p1
.end method

.method static synthetic -set9(Landroid/mtp/MtpObjectInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(JLjava/lang/String;)I
    .locals 2
    .param p0, "value"    # J
    .param p2, "valueName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/mtp/MtpObjectInfo;->longToUint32(JLjava/lang/String;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/mtp/MtpObjectInfo;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/mtp/MtpObjectInfo;-><init>()V

    #@3
    return-void
.end method

.method private static longToUint32(JLjava/lang/String;)I
    .locals 8
    .param p0, "value"    # J
    .param p2, "valueName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 507
    const-wide/16 v2, 0x0

    #@2
    const-wide v4, 0xffffffffL

    #@7
    move-wide v0, p0

    #@8
    move-object v6, p2

    #@9
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    #@c
    .line 508
    long-to-int v0, p0

    #@d
    return v0
.end method

.method private static uint32ToLong(I)J
    .locals 4
    .param p0, "value"    # I

    #@0
    .prologue
    .line 503
    if-gez p0, :cond_0

    #@2
    int-to-long v0, p0

    #@3
    const-wide v2, 0x100000000L

    #@8
    add-long/2addr v0, v2

    #@9
    :goto_0
    return-wide v0

    #@a
    :cond_0
    int-to-long v0, p0

    #@b
    goto :goto_0
.end method


# virtual methods
.method public final getAssociationDesc()I
    .locals 1

    #@0
    .prologue
    .line 281
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mAssociationDesc:I

    #@2
    return v0
.end method

.method public final getAssociationType()I
    .locals 1

    #@0
    .prologue
    .line 270
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mAssociationType:I

    #@2
    return v0
.end method

.method public final getCompressedSize()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 101
    iget v1, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    #@3
    if-ltz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@9
    .line 102
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    #@b
    return v0
.end method

.method public final getCompressedSizeLong()J
    .locals 2

    #@0
    .prologue
    .line 111
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    #@2
    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final getDateCreated()J
    .locals 2

    #@0
    .prologue
    .line 325
    iget-wide v0, p0, Landroid/mtp/MtpObjectInfo;->mDateCreated:J

    #@2
    return-wide v0
.end method

.method public final getDateModified()J
    .locals 2

    #@0
    .prologue
    .line 335
    iget-wide v0, p0, Landroid/mtp/MtpObjectInfo;->mDateModified:J

    #@2
    return-wide v0
.end method

.method public final getFormat()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mFormat:I

    #@2
    return v0
.end method

.method public final getImagePixDepth()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 236
    iget v1, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    #@3
    if-ltz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@9
    .line 237
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    #@b
    return v0
.end method

.method public final getImagePixDepthLong()J
    .locals 2

    #@0
    .prologue
    .line 247
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    #@2
    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final getImagePixHeight()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 215
    iget v1, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    #@3
    if-ltz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@9
    .line 216
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    #@b
    return v0
.end method

.method public final getImagePixHeightLong()J
    .locals 2

    #@0
    .prologue
    .line 226
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    #@2
    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final getImagePixWidth()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 194
    iget v1, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    #@3
    if-ltz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@9
    .line 195
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    #@b
    return v0
.end method

.method public final getImagePixWidthLong()J
    .locals 2

    #@0
    .prologue
    .line 205
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    #@2
    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final getKeywords()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo;->mKeywords:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 315
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getObjectHandle()I
    .locals 1

    #@0
    .prologue
    .line 58
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mHandle:I

    #@2
    return v0
.end method

.method public final getParent()I
    .locals 1

    #@0
    .prologue
    .line 257
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mParent:I

    #@2
    return v0
.end method

.method public final getProtectionStatus()I
    .locals 1

    #@0
    .prologue
    .line 92
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mProtectionStatus:I

    #@2
    return v0
.end method

.method public final getSequenceNumber()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 293
    iget v1, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    #@3
    if-ltz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@9
    .line 294
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    #@b
    return v0
.end method

.method public final getSequenceNumberLong()J
    .locals 2

    #@0
    .prologue
    .line 306
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    #@2
    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final getStorageId()I
    .locals 1

    #@0
    .prologue
    .line 67
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mStorageId:I

    #@2
    return v0
.end method

.method public final getThumbCompressedSize()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 131
    iget v1, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    #@3
    if-ltz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@9
    .line 132
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    #@b
    return v0
.end method

.method public final getThumbCompressedSizeLong()J
    .locals 2

    #@0
    .prologue
    .line 142
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    #@2
    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final getThumbFormat()I
    .locals 1

    #@0
    .prologue
    .line 121
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbFormat:I

    #@2
    return v0
.end method

.method public final getThumbPixHeight()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 173
    iget v1, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    #@3
    if-ltz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@9
    .line 174
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    #@b
    return v0
.end method

.method public final getThumbPixHeightLong()J
    .locals 2

    #@0
    .prologue
    .line 184
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    #@2
    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final getThumbPixWidth()I
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 152
    iget v1, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    #@3
    if-ltz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    #@9
    .line 153
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    #@b
    return v0
.end method

.method public final getThumbPixWidthLong()J
    .locals 2

    #@0
    .prologue
    .line 163
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    #@2
    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method
