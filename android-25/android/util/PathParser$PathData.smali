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
.field mNativePathData:J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@7
    .line 66
    invoke-static {}, Landroid/util/PathParser;->-wrap0()J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@d
    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/util/PathParser$PathData;)V
    .locals 2
    .param p1, "data"    # Landroid/util/PathParser$PathData;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@7
    .line 70
    iget-wide v0, p1, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@9
    invoke-static {v0, v1}, Landroid/util/PathParser;->-wrap2(J)J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@f
    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "pathString"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 64
    iput-wide v2, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@7
    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    invoke-static {p1, v0}, Landroid/util/PathParser;->-wrap1(Ljava/lang/String;I)J

    #@e
    move-result-wide v0

    #@f
    iput-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@11
    .line 75
    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@13
    cmp-long v0, v0, v2

    #@15
    if-nez v0, :cond_0

    #@17
    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "Invalid pathData: "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 96
    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 97
    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@a
    invoke-static {v0, v1}, Landroid/util/PathParser;->-wrap3(J)V

    #@d
    .line 98
    iput-wide v2, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@f
    .line 100
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@12
    .line 95
    return-void
.end method

.method public getNativePtr()J
    .locals 2

    #@0
    .prologue
    .line 81
    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@2
    return-wide v0
.end method

.method public setPathData(Landroid/util/PathParser$PathData;)V
    .locals 4
    .param p1, "source"    # Landroid/util/PathParser$PathData;

    #@0
    .prologue
    .line 91
    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@2
    iget-wide v2, p1, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@4
    invoke-static {v0, v1, v2, v3}, Landroid/util/PathParser;->-wrap4(JJ)V

    #@7
    .line 90
    return-void
.end method
