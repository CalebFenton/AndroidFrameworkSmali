.class final Ljava/nio/charset/CoderResult$Cache;
.super Ljava/lang/Object;
.source "CoderResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/charset/CoderResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cache"
.end annotation


# static fields
.field static final blacklist INSTANCE:Ljava/nio/charset/CoderResult$Cache;


# instance fields
.field final blacklist malformed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/nio/charset/CoderResult;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist unmappable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/nio/charset/CoderResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 194
    new-instance v0, Ljava/nio/charset/CoderResult$Cache;

    invoke-direct {v0}, Ljava/nio/charset/CoderResult$Cache;-><init>()V

    sput-object v0, Ljava/nio/charset/CoderResult$Cache;->INSTANCE:Ljava/nio/charset/CoderResult$Cache;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljava/nio/charset/CoderResult$Cache;->unmappable:Ljava/util/Map;

    .line 198
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljava/nio/charset/CoderResult$Cache;->malformed:Ljava/util/Map;

    .line 195
    return-void
.end method
