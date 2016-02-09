.class public Landroid/os/DropBoxManager;
.super Ljava/lang/Object;
.source "DropBoxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DropBoxManager$Entry;
    }
.end annotation


# static fields
.field public static final ACTION_DROPBOX_ENTRY_ADDED:Ljava/lang/String; = "android.intent.action.DROPBOX_ENTRY_ADDED"

.field public static final EXTRA_TAG:Ljava/lang/String; = "tag"

.field public static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final HAS_BYTE_ARRAY:I = 0x8

.field public static final IS_EMPTY:I = 0x1

.field public static final IS_GZIPPED:I = 0x4

.field public static final IS_TEXT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DropBoxManager"


# instance fields
.field private final mService:Lcom/android/internal/os/IDropBoxManagerService;


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    #@6
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/IDropBoxManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/internal/os/IDropBoxManagerService;

    #@0
    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    #@5
    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;[BI)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 281
    if-nez p2, :cond_0

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "data == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 282
    :cond_0
    :try_start_0
    iget-object v7, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    #@d
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    #@f
    const-wide/16 v2, 0x0

    #@11
    move-object v1, p1

    #@12
    move-object v4, p2

    #@13
    move v5, p3

    #@14
    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J[BI)V

    #@17
    invoke-interface {v7, v0}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 280
    :goto_0
    return-void

    #@1b
    .line 282
    :catch_0
    move-exception v6

    #@1c
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public addFile(Ljava/lang/String;Ljava/io/File;I)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    if-nez p2, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "file == null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 296
    :cond_0
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    #@d
    const-wide/16 v2, 0x0

    #@f
    move-object v1, p1

    #@10
    move-object v4, p2

    #@11
    move v5, p3

    #@12
    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V

    #@15
    .line 298
    .local v0, "entry":Landroid/os/DropBoxManager$Entry;
    :try_start_0
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    #@17
    invoke-interface {v1, v0}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 302
    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    #@1d
    .line 294
    :goto_0
    return-void

    #@1e
    .line 299
    :catch_0
    move-exception v6

    #@1f
    .line 302
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    #@22
    goto :goto_0

    #@23
    .line 301
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@24
    .line 302
    invoke-virtual {v0}, Landroid/os/DropBoxManager$Entry;->close()V

    #@27
    .line 301
    throw v1
.end method

.method public addText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 270
    :try_start_0
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    #@2
    new-instance v2, Landroid/os/DropBoxManager$Entry;

    #@4
    const-wide/16 v4, 0x0

    #@6
    invoke-direct {v2, p1, v4, v5, p2}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    #@9
    invoke-interface {v1, v2}, Lcom/android/internal/os/IDropBoxManagerService;->add(Landroid/os/DropBoxManager$Entry;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 269
    :goto_0
    return-void

    #@d
    .line 270
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msec"    # J

    #@0
    .prologue
    .line 328
    :try_start_0
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    #@2
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/os/IDropBoxManagerService;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    :catch_0
    move-exception v0

    #@8
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 315
    :try_start_0
    iget-object v1, p0, Landroid/os/DropBoxManager;->mService:Lcom/android/internal/os/IDropBoxManagerService;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/os/IDropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    :catch_0
    move-exception v0

    #@8
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method
