.class public Landroid/print/PrintFileDocumentAdapter;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintFileDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrintedFileDocumentAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDocumentInfo:Landroid/print/PrintDocumentInfo;

.field private final mFile:Ljava/io/File;

.field private mWriteFileAsyncTask:Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;


# direct methods
.method static synthetic -get0(Landroid/print/PrintFileDocumentAdapter;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/print/PrintFileDocumentAdapter;)Ljava/io/File;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter;->mFile:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/print/PrintDocumentInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "documentInfo"    # Landroid/print/PrintDocumentInfo;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    #@3
    .line 68
    if-nez p2, :cond_0

    #@5
    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "File cannot be null!"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 71
    :cond_0
    if-nez p3, :cond_1

    #@10
    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "documentInfo cannot be null!"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 74
    :cond_1
    iput-object p1, p0, Landroid/print/PrintFileDocumentAdapter;->mContext:Landroid/content/Context;

    #@1b
    .line 75
    iput-object p2, p0, Landroid/print/PrintFileDocumentAdapter;->mFile:Ljava/io/File;

    #@1d
    .line 76
    iput-object p3, p0, Landroid/print/PrintFileDocumentAdapter;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    #@1f
    .line 67
    return-void
.end method


# virtual methods
.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "oldAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "metadata"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p4, v0, v1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    #@6
    .line 82
    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 3
    .param p1, "pages"    # [Landroid/print/PageRange;
    .param p2, "destination"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    #@0
    .prologue
    .line 89
    new-instance v0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;

    #@2
    invoke-direct {v0, p0, p2, p3, p4}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;-><init>(Landroid/print/PrintFileDocumentAdapter;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    #@5
    iput-object v0, p0, Landroid/print/PrintFileDocumentAdapter;->mWriteFileAsyncTask:Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;

    #@7
    .line 90
    iget-object v1, p0, Landroid/print/PrintFileDocumentAdapter;->mWriteFileAsyncTask:Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;

    #@9
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    #@b
    .line 91
    const/4 v0, 0x0

    #@c
    check-cast v0, [Ljava/lang/Void;

    #@e
    .line 90
    invoke-virtual {v1, v2, v0}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@11
    .line 88
    return-void
.end method
