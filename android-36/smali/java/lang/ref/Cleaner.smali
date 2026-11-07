.class public final Ljava/lang/ref/Cleaner;
.super Ljava/lang/Object;
.source "Cleaner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ref/Cleaner$Cleanable;
    }
.end annotation


# instance fields
.field final blacklist impl:Ljdk/internal/ref/CleanerImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 138
    new-instance v0, Ljava/lang/ref/Cleaner$1;

    invoke-direct {v0}, Ljava/lang/ref/Cleaner$1;-><init>()V

    invoke-static {v0}, Ljdk/internal/ref/CleanerImpl;->setCleanerImplAccess(Ljava/util/function/Function;)V

    .line 144
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljdk/internal/ref/CleanerImpl;

    invoke-direct {v0}, Ljdk/internal/ref/CleanerImpl;-><init>()V

    iput-object v0, p0, Ljava/lang/ref/Cleaner;->impl:Ljdk/internal/ref/CleanerImpl;

    .line 151
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .param p1, "queue"    # Ljava/lang/ref/ReferenceQueue;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljdk/internal/ref/CleanerImpl;

    invoke-direct {v0, p1}, Ljdk/internal/ref/CleanerImpl;-><init>(Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Ljava/lang/ref/Cleaner;->impl:Ljdk/internal/ref/CleanerImpl;

    .line 155
    return-void
.end method

.method public static whitelist test-api create()Ljava/lang/ref/Cleaner;
    .registers 3

    .line 179
    new-instance v0, Ljava/lang/ref/Cleaner;

    invoke-direct {v0}, Ljava/lang/ref/Cleaner;-><init>()V

    .line 180
    .local v0, "cleaner":Ljava/lang/ref/Cleaner;
    iget-object v1, v0, Ljava/lang/ref/Cleaner;->impl:Ljdk/internal/ref/CleanerImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljdk/internal/ref/CleanerImpl;->start(Ljava/lang/ref/Cleaner;Ljava/util/concurrent/ThreadFactory;)V

    .line 181
    return-object v0
.end method

.method public static whitelist test-api create(Ljava/util/concurrent/ThreadFactory;)Ljava/lang/ref/Cleaner;
    .registers 3
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 206
    const-string v0, "threadFactory"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    new-instance v0, Ljava/lang/ref/Cleaner;

    invoke-direct {v0}, Ljava/lang/ref/Cleaner;-><init>()V

    .line 208
    .local v0, "cleaner":Ljava/lang/ref/Cleaner;
    iget-object v1, v0, Ljava/lang/ref/Cleaner;->impl:Ljdk/internal/ref/CleanerImpl;

    invoke-virtual {v1, v0, p0}, Ljdk/internal/ref/CleanerImpl;->start(Ljava/lang/ref/Cleaner;Ljava/util/concurrent/ThreadFactory;)V

    .line 209
    return-object v0
.end method

.method public static blacklist createSystemCleaner()Ljava/lang/ref/Cleaner;
    .registers 2

    .line 219
    new-instance v0, Ljava/lang/ref/Cleaner;

    sget-object v1, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1}, Ljava/lang/ref/Cleaner;-><init>(Ljava/lang/ref/ReferenceQueue;)V

    .line 220
    .local v0, "cleaner":Ljava/lang/ref/Cleaner;
    iget-object v1, v0, Ljava/lang/ref/Cleaner;->impl:Ljdk/internal/ref/CleanerImpl;

    invoke-virtual {v1, v0}, Ljdk/internal/ref/CleanerImpl;->start(Ljava/lang/ref/Cleaner;)V

    .line 221
    return-object v0
.end method


# virtual methods
.method public whitelist test-api register(Ljava/lang/Object;Ljava/lang/Runnable;)Ljava/lang/ref/Cleaner$Cleanable;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "action"    # Ljava/lang/Runnable;

    .line 235
    const-string v0, "obj"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    const-string v0, "action"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    new-instance v0, Ljdk/internal/ref/CleanerImpl$PhantomCleanableRef;

    invoke-direct {v0, p1, p0, p2}, Ljdk/internal/ref/CleanerImpl$PhantomCleanableRef;-><init>(Ljava/lang/Object;Ljava/lang/ref/Cleaner;Ljava/lang/Runnable;)V

    return-object v0
.end method
