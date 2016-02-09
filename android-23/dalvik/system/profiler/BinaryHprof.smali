.class public final Ldalvik/system/profiler/BinaryHprof;
.super Ljava/lang/Object;
.source "BinaryHprof.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldalvik/system/profiler/BinaryHprof$Tag;,
        Ldalvik/system/profiler/BinaryHprof$ControlSettings;
    }
.end annotation


# static fields
.field public static final ID_SIZE:I = 0x4

.field static MAGIC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 37
    const-string/jumbo v0, "JAVA PROFILE "

    #@3
    sput-object v0, Ldalvik/system/profiler/BinaryHprof;->MAGIC:Ljava/lang/String;

    #@5
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final readMagic(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 8
    .param p0, "in"    # Ljava/io/DataInputStream;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 44
    const/16 v5, 0x200

    #@3
    :try_start_0
    new-array v1, v5, [B

    #@5
    .line 45
    .local v1, "bytes":[B
    const/4 v3, 0x0

    #@6
    .local v3, "i":I
    :goto_0
    array-length v5, v1

    #@7
    if-ge v3, v5, :cond_2

    #@9
    .line 46
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    #@c
    move-result v0

    #@d
    .line 47
    .local v0, "b":B
    if-nez v0, :cond_1

    #@f
    .line 48
    new-instance v4, Ljava/lang/String;

    #@11
    const-string/jumbo v5, "UTF-8"

    #@14
    const/4 v6, 0x0

    #@15
    invoke-direct {v4, v1, v6, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@18
    .line 49
    .local v4, "string":Ljava/lang/String;
    sget-object v5, Ldalvik/system/profiler/BinaryHprof;->MAGIC:Ljava/lang/String;

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_0

    #@20
    .line 50
    return-object v4

    #@21
    .line 52
    :cond_0
    return-object v7

    #@22
    .line 54
    .end local v4    # "string":Ljava/lang/String;
    :cond_1
    aput-byte v0, v1, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 45
    add-int/lit8 v3, v3, 0x1

    #@26
    goto :goto_0

    #@27
    .line 56
    .end local v0    # "b":B
    :cond_2
    return-object v7

    #@28
    .line 57
    .end local v1    # "bytes":[B
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    #@29
    .line 58
    .local v2, "e":Ljava/io/IOException;
    return-object v7
.end method
