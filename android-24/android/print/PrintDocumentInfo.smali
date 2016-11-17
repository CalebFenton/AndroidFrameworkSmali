.class public final Landroid/print/PrintDocumentInfo;
.super Ljava/lang/Object;
.source "PrintDocumentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintDocumentInfo$1;,
        Landroid/print/PrintDocumentInfo$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_DOCUMENT:I = 0x0

.field public static final CONTENT_TYPE_PHOTO:I = 0x1

.field public static final CONTENT_TYPE_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrintDocumentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAGE_COUNT_UNKNOWN:I = -0x1


# instance fields
.field private mContentType:I

.field private mDataSize:J

.field private mName:Ljava/lang/String;

.field private mPageCount:I


# direct methods
.method static synthetic -get0(Landroid/print/PrintDocumentInfo;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/print/PrintDocumentInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/print/PrintDocumentInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/print/PrintDocumentInfo;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 368
    new-instance v0, Landroid/print/PrintDocumentInfo$1;

    #@2
    invoke-direct {v0}, Landroid/print/PrintDocumentInfo$1;-><init>()V

    #@5
    .line 367
    sput-object v0, Landroid/print/PrintDocumentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 77
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/lang/String;

    #@f
    iput-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@11
    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@17
    .line 150
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@19
    const/4 v3, -0x1

    #@1a
    if-eq v0, v3, :cond_0

    #@1c
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@1e
    if-lez v0, :cond_1

    #@20
    :cond_0
    move v0, v1

    #@21
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    #@24
    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v0

    #@28
    iput v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@2a
    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@2d
    move-result-wide v0

    #@2e
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    #@31
    move-result-wide v0

    #@32
    iput-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@34
    .line 147
    return-void

    #@35
    :cond_1
    move v0, v2

    #@36
    .line 150
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrintDocumentInfo;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/print/PrintDocumentInfo;)V
    .locals 2
    .param p1, "prototype"    # Landroid/print/PrintDocumentInfo;

    #@0
    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 136
    iget-object v0, p1, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@5
    iput-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@7
    .line 137
    iget v0, p1, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@9
    iput v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@b
    .line 138
    iget v0, p1, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@d
    iput v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@f
    .line 139
    iget-wide v0, p1, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@11
    iput-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@13
    .line 135
    return-void
.end method

.method synthetic constructor <init>(Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/print/PrintDocumentInfo;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo;)V
    .locals 0
    .param p1, "prototype"    # Landroid/print/PrintDocumentInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/print/PrintDocumentInfo;)V

    #@3
    return-void
.end method

.method private contentTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "contentType"    # I

    #@0
    .prologue
    .line 274
    packed-switch p1, :pswitch_data_0

    #@3
    .line 282
    const-string/jumbo v0, "CONTENT_TYPE_UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 276
    :pswitch_0
    const-string/jumbo v0, "CONTENT_TYPE_DOCUMENT"

    #@a
    return-object v0

    #@b
    .line 279
    :pswitch_1
    const-string/jumbo v0, "CONTENT_TYPE_PHOTO"

    #@e
    return-object v0

    #@f
    .line 274
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 211
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 236
    if-ne p0, p1, :cond_0

    #@4
    .line 237
    return v7

    #@5
    .line 239
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 240
    return v6

    #@8
    .line 242
    :cond_1
    invoke-virtual {p0}, Landroid/print/PrintDocumentInfo;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 243
    return v6

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 245
    check-cast v0, Landroid/print/PrintDocumentInfo;

    #@16
    .line 246
    .local v0, "other":Landroid/print/PrintDocumentInfo;
    iget-object v1, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@18
    iget-object v2, v0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@1a
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_3

    #@20
    .line 247
    return v6

    #@21
    .line 249
    :cond_3
    iget v1, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@23
    iget v2, v0, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@25
    if-eq v1, v2, :cond_4

    #@27
    .line 250
    return v6

    #@28
    .line 252
    :cond_4
    iget v1, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@2a
    iget v2, v0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@2c
    if-eq v1, v2, :cond_5

    #@2e
    .line 253
    return v6

    #@2f
    .line 255
    :cond_5
    iget-wide v2, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@31
    iget-wide v4, v0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@33
    cmp-long v1, v2, v4

    #@35
    if-eqz v1, :cond_6

    #@37
    .line 256
    return v6

    #@38
    .line 258
    :cond_6
    return v7
.end method

.method public getContentType()I
    .locals 1

    #@0
    .prologue
    .line 186
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@2
    return v0
.end method

.method public getDataSize()J
    .locals 2

    #@0
    .prologue
    .line 195
    iget-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@2
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    #@0
    .prologue
    .line 173
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 224
    const/16 v0, 0x1f

    #@2
    .line 226
    .local v0, "prime":I
    iget-object v2, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-object v2, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v2

    #@c
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    #@e
    .line 227
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@10
    iget v3, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@12
    add-int v1, v2, v3

    #@14
    .line 228
    mul-int/lit8 v2, v1, 0x1f

    #@16
    iget v3, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@18
    add-int v1, v2, v3

    #@1a
    .line 229
    mul-int/lit8 v2, v1, 0x1f

    #@1c
    iget-wide v4, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@1e
    long-to-int v3, v4

    #@1f
    add-int v1, v2, v3

    #@21
    .line 230
    mul-int/lit8 v2, v1, 0x1f

    #@23
    iget-wide v4, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@25
    const/16 v3, 0x20

    #@27
    shr-long/2addr v4, v3

    #@28
    long-to-int v3, v4

    #@29
    add-int v1, v2, v3

    #@2b
    .line 231
    return v1

    #@2c
    .line 226
    .end local v1    # "result":I
    :cond_0
    const/4 v2, 0x0

    #@2d
    goto :goto_0
.end method

.method public setDataSize(J)V
    .locals 1
    .param p1, "dataSize"    # J

    #@0
    .prologue
    .line 206
    iput-wide p1, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@2
    .line 205
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 264
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PrintDocumentInfo{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 265
    const-string/jumbo v1, "name="

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 266
    const-string/jumbo v1, ", pageCount="

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    iget v2, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 267
    const-string/jumbo v1, ", contentType="

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget v2, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@2c
    invoke-direct {p0, v2}, Landroid/print/PrintDocumentInfo;->contentTypeToString(I)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 268
    const-string/jumbo v1, ", dataSize="

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    iget-wide v2, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@3c
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3f
    .line 269
    const-string/jumbo v1, "}"

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 216
    iget-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 217
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 218
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 219
    iget-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 215
    return-void
.end method
