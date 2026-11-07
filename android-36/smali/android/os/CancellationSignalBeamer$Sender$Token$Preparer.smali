.class Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;
.super Ljava/lang/Object;
.source "CancellationSignalBeamer.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CancellationSignalBeamer$Sender$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Preparer"
.end annotation


# instance fields
.field private final blacklist mSender:Landroid/os/CancellationSignalBeamer$Sender;

.field private final blacklist mSignal:Landroid/os/CancellationSignal;

.field private final blacklist mToken:Landroid/os/CancellationSignalBeamer$Sender$Token;


# direct methods
.method private constructor blacklist <init>(Landroid/os/CancellationSignalBeamer$Sender;Landroid/os/CancellationSignal;Landroid/os/CancellationSignalBeamer$Sender$Token;)V
    .registers 4
    .param p1, "sender"    # Landroid/os/CancellationSignalBeamer$Sender;
    .param p2, "signal"    # Landroid/os/CancellationSignal;
    .param p3, "token"    # Landroid/os/CancellationSignalBeamer$Sender$Token;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;->mSender:Landroid/os/CancellationSignalBeamer$Sender;

    .line 236
    iput-object p2, p0, Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;->mSignal:Landroid/os/CancellationSignal;

    .line 237
    iput-object p3, p0, Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;->mToken:Landroid/os/CancellationSignalBeamer$Sender$Token;

    .line 238
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/CancellationSignalBeamer$Sender;Landroid/os/CancellationSignal;Landroid/os/CancellationSignalBeamer$Sender$Token;Landroid/os/CancellationSignalBeamer-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;-><init>(Landroid/os/CancellationSignalBeamer$Sender;Landroid/os/CancellationSignal;Landroid/os/CancellationSignalBeamer$Sender$Token;)V

    return-void
.end method


# virtual methods
.method public whitelist onCancel()V
    .registers 3

    .line 248
    :try_start_0
    iget-object v0, p0, Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;->mSender:Landroid/os/CancellationSignalBeamer$Sender;

    iget-object v1, p0, Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;->mToken:Landroid/os/CancellationSignalBeamer$Sender$Token;

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignalBeamer$Sender;->onCancel(Landroid/os/IBinder;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_c

    .line 251
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 252
    nop

    .line 253
    return-void

    .line 251
    :catchall_c
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 252
    throw v0
.end method

.method blacklist setup()V
    .registers 3

    .line 241
    sget-object v0, Landroid/os/CancellationSignalBeamer;->sCleaner:Ljava/lang/ref/Cleaner;

    iget-object v1, p0, Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;->mToken:Landroid/os/CancellationSignalBeamer$Sender$Token;

    invoke-virtual {v0, p0, v1}, Ljava/lang/ref/Cleaner;->register(Ljava/lang/Object;Ljava/lang/Runnable;)Ljava/lang/ref/Cleaner$Cleanable;

    .line 242
    iget-object v0, p0, Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;->mSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 243
    return-void
.end method
