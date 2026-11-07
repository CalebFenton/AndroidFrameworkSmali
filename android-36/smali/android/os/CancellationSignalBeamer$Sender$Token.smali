.class Landroid/os/CancellationSignalBeamer$Sender$Token;
.super Landroid/os/Binder;
.source "CancellationSignalBeamer.java"

# interfaces
.implements Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CancellationSignalBeamer$Sender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;
    }
.end annotation


# instance fields
.field private blacklist mPreparer:Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;

.field private final blacklist mSender:Landroid/os/CancellationSignalBeamer$Sender;


# direct methods
.method private constructor blacklist <init>(Landroid/os/CancellationSignalBeamer$Sender;Landroid/os/CancellationSignal;)V
    .registers 5
    .param p1, "sender"    # Landroid/os/CancellationSignalBeamer$Sender;
    .param p2, "signal"    # Landroid/os/CancellationSignal;

    .line 210
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 211
    iput-object p1, p0, Landroid/os/CancellationSignalBeamer$Sender$Token;->mSender:Landroid/os/CancellationSignalBeamer$Sender;

    .line 212
    new-instance v0, Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;-><init>(Landroid/os/CancellationSignalBeamer$Sender;Landroid/os/CancellationSignal;Landroid/os/CancellationSignalBeamer$Sender$Token;Landroid/os/CancellationSignalBeamer-IA;)V

    iput-object v0, p0, Landroid/os/CancellationSignalBeamer$Sender$Token;->mPreparer:Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;

    .line 213
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/CancellationSignalBeamer$Sender;Landroid/os/CancellationSignal;Landroid/os/CancellationSignalBeamer-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/os/CancellationSignalBeamer$Sender$Token;-><init>(Landroid/os/CancellationSignalBeamer$Sender;Landroid/os/CancellationSignal;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 217
    iget-object v0, p0, Landroid/os/CancellationSignalBeamer$Sender$Token;->mPreparer:Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;

    .line 218
    .local v0, "preparer":Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/CancellationSignalBeamer$Sender$Token;->mPreparer:Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;

    .line 219
    if-eqz v0, :cond_a

    .line 220
    invoke-virtual {v0}, Landroid/os/CancellationSignalBeamer$Sender$Token$Preparer;->setup()V

    .line 222
    :cond_a
    return-void
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/os/CancellationSignalBeamer$Sender$Token;->mSender:Landroid/os/CancellationSignalBeamer$Sender;

    invoke-virtual {v0, p0}, Landroid/os/CancellationSignalBeamer$Sender;->onForget(Landroid/os/IBinder;)V

    .line 227
    return-void
.end method
