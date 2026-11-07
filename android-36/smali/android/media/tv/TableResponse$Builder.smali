.class public final Landroid/media/tv/TableResponse$Builder;
.super Ljava/lang/Object;
.source "TableResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TableResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mRequestId:I

.field private final blacklist mResponseResult:I

.field private final blacklist mSequence:I

.field private final blacklist mSize:I

.field private blacklist mTableByteArray:[B

.field private blacklist mTableSharedMemory:Landroid/os/SharedMemory;

.field private blacklist mTableUri:Landroid/net/Uri;

.field private final blacklist mVersion:I


# direct methods
.method public constructor whitelist <init>(IIIII)V
    .registers 6
    .param p1, "requestId"    # I
    .param p2, "sequence"    # I
    .param p3, "responseResult"    # I
    .param p4, "version"    # I
    .param p5, "size"    # I

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Landroid/media/tv/TableResponse$Builder;->mRequestId:I

    .line 143
    iput p2, p0, Landroid/media/tv/TableResponse$Builder;->mSequence:I

    .line 144
    iput p3, p0, Landroid/media/tv/TableResponse$Builder;->mResponseResult:I

    .line 145
    iput p4, p0, Landroid/media/tv/TableResponse$Builder;->mVersion:I

    .line 146
    iput p5, p0, Landroid/media/tv/TableResponse$Builder;->mSize:I

    .line 147
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/tv/TableResponse;
    .registers 11

    .line 212
    new-instance v0, Landroid/media/tv/TableResponse;

    iget v1, p0, Landroid/media/tv/TableResponse$Builder;->mRequestId:I

    iget v2, p0, Landroid/media/tv/TableResponse$Builder;->mSequence:I

    iget v3, p0, Landroid/media/tv/TableResponse$Builder;->mResponseResult:I

    iget v4, p0, Landroid/media/tv/TableResponse$Builder;->mVersion:I

    iget v5, p0, Landroid/media/tv/TableResponse$Builder;->mSize:I

    iget-object v6, p0, Landroid/media/tv/TableResponse$Builder;->mTableUri:Landroid/net/Uri;

    iget-object v7, p0, Landroid/media/tv/TableResponse$Builder;->mTableByteArray:[B

    iget-object v8, p0, Landroid/media/tv/TableResponse$Builder;->mTableSharedMemory:Landroid/os/SharedMemory;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/media/tv/TableResponse;-><init>(IIIIILandroid/net/Uri;[BLandroid/os/SharedMemory;Landroid/media/tv/TableResponse-IA;)V

    return-object v0
.end method

.method public whitelist setTableByteArray([B)Landroid/media/tv/TableResponse$Builder;
    .registers 3
    .param p1, "bytes"    # [B

    .line 179
    iput-object p1, p0, Landroid/media/tv/TableResponse$Builder;->mTableByteArray:[B

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TableResponse$Builder;->mTableUri:Landroid/net/Uri;

    .line 181
    iput-object v0, p0, Landroid/media/tv/TableResponse$Builder;->mTableSharedMemory:Landroid/os/SharedMemory;

    .line 182
    return-object p0
.end method

.method public whitelist setTableSharedMemory(Landroid/os/SharedMemory;)Landroid/media/tv/TableResponse$Builder;
    .registers 3
    .param p1, "sharedMemory"    # Landroid/os/SharedMemory;

    .line 201
    iput-object p1, p0, Landroid/media/tv/TableResponse$Builder;->mTableSharedMemory:Landroid/os/SharedMemory;

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TableResponse$Builder;->mTableUri:Landroid/net/Uri;

    .line 203
    iput-object v0, p0, Landroid/media/tv/TableResponse$Builder;->mTableByteArray:[B

    .line 204
    return-object p0
.end method

.method public whitelist setTableUri(Landroid/net/Uri;)Landroid/media/tv/TableResponse$Builder;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 160
    iput-object p1, p0, Landroid/media/tv/TableResponse$Builder;->mTableUri:Landroid/net/Uri;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TableResponse$Builder;->mTableByteArray:[B

    .line 162
    iput-object v0, p0, Landroid/media/tv/TableResponse$Builder;->mTableSharedMemory:Landroid/os/SharedMemory;

    .line 163
    return-object p0
.end method
