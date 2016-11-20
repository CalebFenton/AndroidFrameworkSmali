.class Ljava/lang/Byte$ByteCache;
.super Ljava/lang/Object;
.source "Byte.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Byte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteCache"
.end annotation


# static fields
.field static final cache:[Ljava/lang/Byte;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 80
    const/16 v1, 0x100

    #@2
    new-array v1, v1, [Ljava/lang/Byte;

    #@4
    sput-object v1, Ljava/lang/Byte$ByteCache;->cache:[Ljava/lang/Byte;

    #@6
    .line 83
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    sget-object v1, Ljava/lang/Byte$ByteCache;->cache:[Ljava/lang/Byte;

    #@9
    array-length v1, v1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 84
    sget-object v1, Ljava/lang/Byte$ByteCache;->cache:[Ljava/lang/Byte;

    #@e
    new-instance v2, Ljava/lang/Byte;

    #@10
    add-int/lit8 v3, v0, -0x80

    #@12
    int-to-byte v3, v3

    #@13
    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    #@16
    aput-object v2, v1, v0

    #@18
    .line 83
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 77
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
