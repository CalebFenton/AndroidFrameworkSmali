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
.field private static final group:Ljava/lang/ThreadGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 93
    invoke-static {}, Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;->getRootThreadGroup()Ljava/lang/ThreadGroup;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;->group:Ljava/lang/ThreadGroup;

    #@6
    .line 92
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;-><init>()V

    #@3
    return-void
.end method

.method private static getRootThreadGroup()Ljava/lang/ThreadGroup;
    .locals 1

    #@0
    .prologue
    .line 96
    new-instance v0, Ljava/lang/UNIXProcess$ProcessReaperThreadFactory$1;

    #@2
    invoke-direct {v0}, Ljava/lang/UNIXProcess$ProcessReaperThreadFactory$1;-><init>()V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/ThreadGroup;

    #@b
    return-object v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 6
    .param p1, "grimReaper"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 107
    new-instance v0, Ljava/lang/Thread;

    #@2
    sget-object v1, Ljava/lang/UNIXProcess$ProcessReaperThreadFactory;->group:Ljava/lang/ThreadGroup;

    #@4
    const-string/jumbo v3, "process reaper"

    #@7
    const-wide/32 v4, 0x8000

    #@a
    move-object v2, p1

    #@b
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@e
    .line 108
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    #@12
    .line 110
    const/16 v1, 0xa

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    #@17
    .line 111
    return-object v0
.end method
