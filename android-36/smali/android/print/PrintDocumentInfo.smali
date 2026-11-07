.class public final Landroid/print/PrintDocumentInfo;
.super Ljava/lang/Object;
.source "PrintDocumentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintDocumentInfo$Builder;,
        Landroid/print/PrintDocumentInfo$ContentType;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_TYPE_DOCUMENT:I = 0x0

.field public static final whitelist CONTENT_TYPE_PHOTO:I = 0x1

.field public static final whitelist CONTENT_TYPE_UNKNOWN:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/print/PrintDocumentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PAGE_COUNT_UNKNOWN:I = -0x1


# instance fields
.field private greylist-max-o mContentType:I

.field private greylist-max-o mDataSize:J

.field private greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mPageCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPageCount(Landroid/print/PrintDocumentInfo;)I
    .registers 1

    iget p0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContentType(Landroid/print/PrintDocumentInfo;I)V
    .registers 2

    iput p1, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmName(Landroid/print/PrintDocumentInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPageCount(Landroid/print/PrintDocumentInfo;I)V
    .registers 2

    iput p1, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 372
    new-instance v0, Landroid/print/PrintDocumentInfo$1;

    invoke-direct {v0}, Landroid/print/PrintDocumentInfo$1;-><init>()V

    sput-object v0, Landroid/print/PrintDocumentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    .line 155
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    if-lez v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    .line 158
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/print/PrintDocumentInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/print/PrintDocumentInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/print/PrintDocumentInfo;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/print/PrintDocumentInfo;)V
    .registers 4
    .param p1, "prototype"    # Landroid/print/PrintDocumentInfo;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iget-object v0, p1, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    .line 142
    iget v0, p1, Landroid/print/PrintDocumentInfo;->mPageCount:I

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    .line 143
    iget v0, p1, Landroid/print/PrintDocumentInfo;->mContentType:I

    iput v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    .line 144
    iget-wide v0, p1, Landroid/print/PrintDocumentInfo;->mDataSize:J

    iput-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    .line 145
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/print/PrintDocumentInfo;)V

    return-void
.end method

.method private greylist-max-o contentTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "contentType"    # I

    .line 279
    packed-switch p1, :pswitch_data_c

    .line 287
    const-string v0, "CONTENT_TYPE_UNKNOWN"

    return-object v0

    .line 284
    :pswitch_6
    const-string v0, "CONTENT_TYPE_PHOTO"

    return-object v0

    .line 281
    :pswitch_9
    const-string v0, "CONTENT_TYPE_DOCUMENT"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 241
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 242
    return v0

    .line 244
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 245
    return v1

    .line 247
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 248
    return v1

    .line 250
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/print/PrintDocumentInfo;

    .line 251
    .local v2, "other":Landroid/print/PrintDocumentInfo;
    iget-object v3, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 252
    return v1

    .line 254
    :cond_21
    iget v3, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    iget v4, v2, Landroid/print/PrintDocumentInfo;->mContentType:I

    if-eq v3, v4, :cond_28

    .line 255
    return v1

    .line 257
    :cond_28
    iget v3, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    iget v4, v2, Landroid/print/PrintDocumentInfo;->mPageCount:I

    if-eq v3, v4, :cond_2f

    .line 258
    return v1

    .line 260
    :cond_2f
    iget-wide v3, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    iget-wide v5, v2, Landroid/print/PrintDocumentInfo;->mDataSize:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_38

    .line 261
    return v1

    .line 263
    :cond_38
    return v0
.end method

.method public whitelist getContentType()I
    .registers 2

    .line 191
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    return v0
.end method

.method public whitelist getDataSize()J
    .registers 3

    .line 200
    iget-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    return-wide v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPageCount()I
    .registers 2

    .line 178
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 229
    const/16 v0, 0x1f

    .line 230
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 231
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_11

    :cond_10
    const/4 v3, 0x0

    :goto_11
    add-int/2addr v2, v3

    .line 232
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    add-int/2addr v1, v3

    .line 233
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    add-int/2addr v2, v3

    .line 234
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-wide v3, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    long-to-int v3, v3

    add-int/2addr v1, v3

    .line 235
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 236
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public greylist-max-o setDataSize(J)V
    .registers 3
    .param p1, "dataSize"    # J

    .line 211
    iput-wide p1, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    .line 212
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PrintDocumentInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string/jumbo v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, ", pageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    invoke-direct {p0, v2}, Landroid/print/PrintDocumentInfo;->contentTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, ", dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 274
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 221
    iget-object v0, p0, Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mPageCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget v0, p0, Landroid/print/PrintDocumentInfo;->mContentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget-wide v0, p0, Landroid/print/PrintDocumentInfo;->mDataSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 225
    return-void
.end method
