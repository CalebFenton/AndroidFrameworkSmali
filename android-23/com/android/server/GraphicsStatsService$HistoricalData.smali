.class final Lcom/android/server/GraphicsStatsService$HistoricalData;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HistoricalData"
.end annotation


# instance fields
.field final mBuffer:[B

.field mPackageName:Ljava/lang/String;

.field mUid:I


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 244
    const/16 v0, 0x100

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mBuffer:[B

    #@9
    .line 243
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GraphicsStatsService$HistoricalData;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService$HistoricalData;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method update(Ljava/lang/String;ILandroid/os/MemoryFile;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "file"    # Landroid/os/MemoryFile;

    #@0
    .prologue
    .line 249
    iput p2, p0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mUid:I

    #@2
    .line 250
    iput-object p1, p0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mPackageName:Ljava/lang/String;

    #@4
    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService$HistoricalData;->mBuffer:[B

    #@6
    const/4 v2, 0x0

    #@7
    const/4 v3, 0x0

    #@8
    const/16 v4, 0x100

    #@a
    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/os/MemoryFile;->readBytes([BIII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 248
    :goto_0
    return-void

    #@e
    .line 253
    :catch_0
    move-exception v0

    #@f
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method
