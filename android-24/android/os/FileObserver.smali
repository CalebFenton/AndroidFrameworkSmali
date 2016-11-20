.class public abstract Landroid/os/FileObserver;
.super Ljava/lang/Object;
.source "FileObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileObserver$ObserverThread;
    }
.end annotation


# static fields
.field public static final ACCESS:I = 0x1

.field public static final ALL_EVENTS:I = 0xfff

.field public static final ATTRIB:I = 0x4

.field public static final CLOSE_NOWRITE:I = 0x10

.field public static final CLOSE_WRITE:I = 0x8

.field public static final CREATE:I = 0x100

.field public static final DELETE:I = 0x200

.field public static final DELETE_SELF:I = 0x400

.field private static final LOG_TAG:Ljava/lang/String; = "FileObserver"

.field public static final MODIFY:I = 0x2

.field public static final MOVED_FROM:I = 0x40

.field public static final MOVED_TO:I = 0x80

.field public static final MOVE_SELF:I = 0x800

.field public static final OPEN:I = 0x20

.field private static s_observerThread:Landroid/os/FileObserver$ObserverThread;


# instance fields
.field private m_descriptor:Ljava/lang/Integer;

.field private m_mask:I

.field private m_path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 138
    new-instance v0, Landroid/os/FileObserver$ObserverThread;

    #@2
    invoke-direct {v0}, Landroid/os/FileObserver$ObserverThread;-><init>()V

    #@5
    sput-object v0, Landroid/os/FileObserver;->s_observerThread:Landroid/os/FileObserver$ObserverThread;

    #@7
    .line 139
    sget-object v0, Landroid/os/FileObserver;->s_observerThread:Landroid/os/FileObserver$ObserverThread;

    #@9
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@c
    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 151
    const/16 v0, 0xfff

    #@2
    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    #@5
    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mask"    # I

    #@0
    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 163
    iput-object p1, p0, Landroid/os/FileObserver;->m_path:Ljava/lang/String;

    #@5
    .line 164
    iput p2, p0, Landroid/os/FileObserver;->m_mask:I

    #@7
    .line 165
    const/4 v0, -0x1

    #@8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/os/FileObserver;->m_descriptor:Ljava/lang/Integer;

    #@e
    .line 162
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/os/FileObserver;->stopWatching()V

    #@3
    .line 168
    return-void
.end method

.method public abstract onEvent(ILjava/lang/String;)V
.end method

.method public startWatching()V
    .locals 3

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Landroid/os/FileObserver;->m_descriptor:Ljava/lang/Integer;

    #@2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@5
    move-result v0

    #@6
    if-gez v0, :cond_0

    #@8
    .line 179
    sget-object v0, Landroid/os/FileObserver;->s_observerThread:Landroid/os/FileObserver$ObserverThread;

    #@a
    iget-object v1, p0, Landroid/os/FileObserver;->m_path:Ljava/lang/String;

    #@c
    iget v2, p0, Landroid/os/FileObserver;->m_mask:I

    #@e
    invoke-virtual {v0, v1, v2, p0}, Landroid/os/FileObserver$ObserverThread;->startWatching(Ljava/lang/String;ILandroid/os/FileObserver;)I

    #@11
    move-result v0

    #@12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/os/FileObserver;->m_descriptor:Ljava/lang/Integer;

    #@18
    .line 177
    :cond_0
    return-void
.end method

.method public stopWatching()V
    .locals 2

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Landroid/os/FileObserver;->m_descriptor:Ljava/lang/Integer;

    #@2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@5
    move-result v0

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 190
    sget-object v0, Landroid/os/FileObserver;->s_observerThread:Landroid/os/FileObserver$ObserverThread;

    #@a
    iget-object v1, p0, Landroid/os/FileObserver;->m_descriptor:Ljava/lang/Integer;

    #@c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/FileObserver$ObserverThread;->stopWatching(I)V

    #@13
    .line 191
    const/4 v0, -0x1

    #@14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroid/os/FileObserver;->m_descriptor:Ljava/lang/Integer;

    #@1a
    .line 188
    :cond_0
    return-void
.end method
