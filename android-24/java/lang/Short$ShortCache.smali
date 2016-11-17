.class Ljava/lang/Short$ShortCache;
.super Ljava/lang/Object;
.source "Short.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Short;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortCache"
.end annotation


# static fields
.field static final cache:[Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 206
    const/16 v1, 0x100

    #@2
    new-array v1, v1, [Ljava/lang/Short;

    #@4
    sput-object v1, Ljava/lang/Short$ShortCache;->cache:[Ljava/lang/Short;

    #@6
    .line 209
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    sget-object v1, Ljava/lang/Short$ShortCache;->cache:[Ljava/lang/Short;

    #@9
    array-length v1, v1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 210
    sget-object v1, Ljava/lang/Short$ShortCache;->cache:[Ljava/lang/Short;

    #@e
    new-instance v2, Ljava/lang/Short;

    #@10
    add-int/lit8 v3, v0, -0x80

    #@12
    int-to-short v3, v3

    #@13
    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(S)V

    #@16
    aput-object v2, v1, v0

    #@18
    .line 209
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 203
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
