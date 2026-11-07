.class Ljava/util/zip/Deflater$DeflaterZStreamRef;
.super Ljava/lang/Object;
.source "Deflater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/Deflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeflaterZStreamRef"
.end annotation


# instance fields
.field private blacklist address:J

.field private final blacklist cleanable:Ljava/lang/ref/Cleaner$Cleanable;


# direct methods
.method private constructor blacklist <init>(Ljava/util/zip/Deflater;J)V
    .registers 5
    .param p1, "owner"    # Ljava/util/zip/Deflater;
    .param p2, "addr"    # J

    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 961
    if-eqz p1, :cond_e

    invoke-static {}, Ljdk/internal/ref/CleanerFactory;->cleaner()Ljava/lang/ref/Cleaner;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Ljava/lang/ref/Cleaner;->register(Ljava/lang/Object;Ljava/lang/Runnable;)Ljava/lang/ref/Cleaner$Cleanable;

    move-result-object v0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iput-object v0, p0, Ljava/util/zip/Deflater$DeflaterZStreamRef;->cleanable:Ljava/lang/ref/Cleaner$Cleanable;

    .line 962
    iput-wide p2, p0, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address:J

    .line 963
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/zip/Deflater;JLjava/util/zip/Deflater-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Ljava/util/zip/Deflater$DeflaterZStreamRef;-><init>(Ljava/util/zip/Deflater;J)V

    return-void
.end method


# virtual methods
.method blacklist address()J
    .registers 3

    .line 966
    iget-wide v0, p0, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address:J

    return-wide v0
.end method

.method blacklist clean()V
    .registers 2

    .line 970
    iget-object v0, p0, Ljava/util/zip/Deflater$DeflaterZStreamRef;->cleanable:Ljava/lang/ref/Cleaner$Cleanable;

    invoke-interface {v0}, Ljava/lang/ref/Cleaner$Cleanable;->clean()V

    .line 971
    return-void
.end method

.method public declared-synchronized whitelist test-api run()V
    .registers 5

    monitor-enter p0

    .line 974
    :try_start_1
    iget-wide v0, p0, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address:J

    .line 975
    .local v0, "addr":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address:J

    .line 976
    cmp-long v2, v0, v2

    if-eqz v2, :cond_e

    .line 977
    invoke-static {v0, v1}, Ljava/util/zip/Deflater;->-$$Nest$smend(J)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 979
    .end local p0    # "this":Ljava/util/zip/Deflater$DeflaterZStreamRef;
    :cond_e
    monitor-exit p0

    return-void

    .line 973
    .end local v0    # "addr":J
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method
