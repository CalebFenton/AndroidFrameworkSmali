.class Ljava/lang/Long$LongCache;
.super Ljava/lang/Object;
.source "Long.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Long;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongCache"
.end annotation


# static fields
.field static final cache:[Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 548
    const/16 v1, 0x100

    #@2
    new-array v1, v1, [Ljava/lang/Long;

    #@4
    sput-object v1, Ljava/lang/Long$LongCache;->cache:[Ljava/lang/Long;

    #@6
    .line 551
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    sget-object v1, Ljava/lang/Long$LongCache;->cache:[Ljava/lang/Long;

    #@9
    array-length v1, v1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 552
    sget-object v1, Ljava/lang/Long$LongCache;->cache:[Ljava/lang/Long;

    #@e
    new-instance v2, Ljava/lang/Long;

    #@10
    add-int/lit8 v3, v0, -0x80

    #@12
    int-to-long v4, v3

    #@13
    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    #@16
    aput-object v2, v1, v0

    #@18
    .line 551
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 545
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
