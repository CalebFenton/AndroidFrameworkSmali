.class Llibcore/util/ZoneInfoDB$TzData$1;
.super Llibcore/util/BasicLruCache;
.source "ZoneInfoDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/ZoneInfoDB$TzData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llibcore/util/BasicLruCache",
        "<",
        "Ljava/lang/String;",
        "Llibcore/util/ZoneInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Llibcore/util/ZoneInfoDB$TzData;


# direct methods
.method constructor <init>(Llibcore/util/ZoneInfoDB$TzData;I)V
    .locals 0
    .param p1, "this$1"    # Llibcore/util/ZoneInfoDB$TzData;
    .param p2, "$anonymous0"    # I

    #@0
    .prologue
    .line 77
    iput-object p1, p0, Llibcore/util/ZoneInfoDB$TzData$1;->this$1:Llibcore/util/ZoneInfoDB$TzData;

    #@2
    invoke-direct {p0, p2}, Llibcore/util/BasicLruCache;-><init>(I)V

    #@5
    return-void
.end method


# virtual methods
.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 79
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "id":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Llibcore/util/ZoneInfoDB$TzData$1;->create(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected create(Ljava/lang/String;)Llibcore/util/ZoneInfo;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 81
    iget-object v2, p0, Llibcore/util/ZoneInfoDB$TzData$1;->this$1:Llibcore/util/ZoneInfoDB$TzData;

    #@2
    invoke-static {v2}, Llibcore/util/ZoneInfoDB$TzData;->-get1(Llibcore/util/ZoneInfoDB$TzData;)[Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    #@9
    move-result v0

    #@a
    .line 82
    .local v0, "index":I
    if-gez v0, :cond_0

    #@c
    .line 83
    const/4 v2, 0x0

    #@d
    return-object v2

    #@e
    .line 86
    :cond_0
    iget-object v2, p0, Llibcore/util/ZoneInfoDB$TzData$1;->this$1:Llibcore/util/ZoneInfoDB$TzData;

    #@10
    invoke-static {v2}, Llibcore/util/ZoneInfoDB$TzData;->-get2(Llibcore/util/ZoneInfoDB$TzData;)Llibcore/io/MemoryMappedFile;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Llibcore/io/MemoryMappedFile;->bigEndianIterator()Llibcore/io/BufferIterator;

    #@17
    move-result-object v1

    #@18
    .line 87
    .local v1, "it":Llibcore/io/BufferIterator;
    iget-object v2, p0, Llibcore/util/ZoneInfoDB$TzData$1;->this$1:Llibcore/util/ZoneInfoDB$TzData;

    #@1a
    invoke-static {v2}, Llibcore/util/ZoneInfoDB$TzData;->-get0(Llibcore/util/ZoneInfoDB$TzData;)[I

    #@1d
    move-result-object v2

    #@1e
    aget v2, v2, v0

    #@20
    invoke-virtual {v1, v2}, Llibcore/io/BufferIterator;->skip(I)V

    #@23
    .line 89
    invoke-static {p1, v1}, Llibcore/util/ZoneInfo;->makeTimeZone(Ljava/lang/String;Llibcore/io/BufferIterator;)Llibcore/util/ZoneInfo;

    #@26
    move-result-object v2

    #@27
    return-object v2
.end method
