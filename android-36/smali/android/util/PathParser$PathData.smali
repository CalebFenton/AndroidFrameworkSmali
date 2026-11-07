.class public Landroid/util/PathParser$PathData;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathData"
.end annotation


# instance fields
.field greylist-max-o mNativePathData:J


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    .line 71
    invoke-static {}, Landroid/util/PathParser;->-$$Nest$smnCreateEmptyPathData()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    .line 72
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/util/PathParser$PathData;)V
    .registers 4
    .param p1, "data"    # Landroid/util/PathParser$PathData;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    .line 75
    iget-wide v0, p1, Landroid/util/PathParser$PathData;->mNativePathData:J

    invoke-static {v0, v1}, Landroid/util/PathParser;->-$$Nest$smnCreatePathData(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    .line 76
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "pathString"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Landroid/util/PathParser;->-$$Nest$smnCreatePathDataFromString(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    .line 80
    iget-wide v2, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_18

    .line 83
    return-void

    .line 81
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pathData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 101
    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 102
    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    invoke-static {v0, v1}, Landroid/util/PathParser;->-$$Nest$smnFinalize(J)V

    .line 103
    iput-wide v2, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    .line 105
    :cond_f
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 106
    return-void
.end method

.method public greylist-max-o getNativePtr()J
    .registers 3

    .line 86
    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    return-wide v0
.end method

.method public greylist-max-o setPathData(Landroid/util/PathParser$PathData;)V
    .registers 6
    .param p1, "source"    # Landroid/util/PathParser$PathData;

    .line 96
    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    iget-wide v2, p1, Landroid/util/PathParser$PathData;->mNativePathData:J

    invoke-static {v0, v1, v2, v3}, Landroid/util/PathParser;->-$$Nest$smnSetPathData(JJ)V

    .line 97
    return-void
.end method
