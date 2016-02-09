.class Ljava/util/zip/ZipFile$EocdRecord;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EocdRecord"
.end annotation


# instance fields
.field final centralDirOffset:J

.field final commentLength:I

.field final numEntries:J


# direct methods
.method constructor <init>(JJI)V
    .locals 1
    .param p1, "numEntries"    # J
    .param p3, "centralDirOffset"    # J
    .param p5, "commentLength"    # I

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 116
    iput-wide p1, p0, Ljava/util/zip/ZipFile$EocdRecord;->numEntries:J

    #@5
    .line 117
    iput-wide p3, p0, Ljava/util/zip/ZipFile$EocdRecord;->centralDirOffset:J

    #@7
    .line 118
    iput p5, p0, Ljava/util/zip/ZipFile$EocdRecord;->commentLength:I

    #@9
    .line 115
    return-void
.end method
