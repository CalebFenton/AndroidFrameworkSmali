.class Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;
.super Ljava/lang/Object;
.source "UNIXProcess.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/UNIXProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProcessReaperThreadFactory"
.end annotation


# static fields
.field private static final blacklist group:Ljava/lang/ThreadGroup;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 93
    invoke-static {}, Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;->getRootThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    sput-object v0, Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;->group:Ljava/lang/ThreadGroup;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/UNIXProcess-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;-><init>()V

    return-void
.end method

.method private static blacklist getRootThreadGroup()Ljava/lang/ThreadGroup;
    .registers 1

    .line 96
    new-instance v0, Ljava/lang/UNIXProcess$ProcessReaperThreadFactory$1;

    invoke-direct {v0}, Ljava/lang/UNIXProcess$ProcessReaperThreadFactory$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadGroup;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 8
    .param p1, "grimReaper"    # Ljava/lang/Runnable;

    .line 107
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;->group:Ljava/lang/ThreadGroup;

    const-string v3, "process reaper"

    const-wide/32 v4, 0x8000

    move-object v2, p1

    .end local p1    # "grimReaper":Ljava/lang/Runnable;
    .local v2, "grimReaper":Ljava/lang/Runnable;
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 108
    .local v0, "t":Ljava/lang/Thread;
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 110
    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 111
    return-object v0
.end method
