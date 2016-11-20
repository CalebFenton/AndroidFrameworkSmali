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
    .line 71
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
    .line 73
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
    const/4 v2, 0x0

    #@1
    .line 74
    iget-object v1, p0, Llibcore/util/ZoneInfoDB$TzData$1;->this$1:Llibcore/util/ZoneInfoDB$TzData;

    #@3
    invoke-virtual {v1, p1}, Llibcore/util/ZoneInfoDB$TzData;->getBufferIterator(Ljava/lang/String;)Llibcore/io/BufferIterator;

    #@6
    move-result-object v0

    #@7
    .line 75
    .local v0, "it":Llibcore/io/BufferIterator;
    if-nez v0, :cond_0

    #@9
    .line 76
    return-object v2

    #@a
    .line 79
    :cond_0
    invoke-static {p1, v0}, Llibcore/util/ZoneInfo;->makeTimeZone(Ljava/lang/String;Llibcore/io/BufferIterator;)Llibcore/util/ZoneInfo;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method
