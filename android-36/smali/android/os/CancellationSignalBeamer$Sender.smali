.class public abstract Landroid/os/CancellationSignalBeamer$Sender;
.super Ljava/lang/Object;
.source "CancellationSignalBeamer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CancellationSignalBeamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Sender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CancellationSignalBeamer$Sender$Token;,
        Landroid/os/CancellationSignalBeamer$Sender$MustClose;,
        Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;
    }
.end annotation


# static fields
.field private static final blacklist sScope:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/Pair<",
            "Landroid/os/CancellationSignalBeamer$Sender;",
            "Ljava/util/ArrayList<",
            "Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 151
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/CancellationSignalBeamer$Sender;->sScope:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist beamFromScope(Landroid/os/CancellationSignal;)Landroid/os/IBinder;
    .registers 4
    .param p0, "cs"    # Landroid/os/CancellationSignal;

    .line 196
    sget-object v0, Landroid/os/CancellationSignalBeamer$Sender;->sScope:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 197
    .local v0, "state":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/CancellationSignalBeamer$Sender;Ljava/util/ArrayList<Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;>;>;"
    if-eqz v0, :cond_1a

    .line 198
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/CancellationSignalBeamer$Sender;

    invoke-virtual {v1, p0}, Landroid/os/CancellationSignalBeamer$Sender;->beam(Landroid/os/CancellationSignal;)Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;

    move-result-object v1

    .line 199
    .local v1, "token":Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    return-object v1

    .line 202
    .end local v1    # "token":Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;
    :cond_1a
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic blacklist lambda$beamScopeIfNeeded$0()V
    .registers 3

    .line 170
    sget-object v0, Landroid/os/CancellationSignalBeamer$Sender;->sScope:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 171
    .local v0, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;>;"
    sget-object v1, Landroid/os/CancellationSignalBeamer$Sender;->sScope:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 172
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_2b

    .line 173
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 174
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;

    invoke-interface {v2}, Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;->close()V

    .line 172
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 177
    .end local v1    # "i":I
    :cond_2b
    return-void
.end method


# virtual methods
.method public blacklist beam(Landroid/os/CancellationSignal;)Landroid/os/CancellationSignalBeamer$Sender$CloseableToken;
    .registers 4
    .param p1, "cs"    # Landroid/os/CancellationSignal;

    .line 129
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 130
    return-object v0

    .line 132
    :cond_4
    new-instance v1, Landroid/os/CancellationSignalBeamer$Sender$Token;

    invoke-direct {v1, p0, p1, v0}, Landroid/os/CancellationSignalBeamer$Sender$Token;-><init>(Landroid/os/CancellationSignalBeamer$Sender;Landroid/os/CancellationSignal;Landroid/os/CancellationSignalBeamer-IA;)V

    return-object v1
.end method

.method public blacklist beamScopeIfNeeded(Landroid/view/inputmethod/HandwritingGesture;)Landroid/os/CancellationSignalBeamer$Sender$MustClose;
    .registers 4
    .param p1, "gesture"    # Landroid/view/inputmethod/HandwritingGesture;

    .line 165
    instance-of v0, p1, Landroid/view/inputmethod/CancellableHandwritingGesture;

    if-nez v0, :cond_6

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_6
    sget-object v0, Landroid/os/CancellationSignalBeamer$Sender;->sScope:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 169
    new-instance v0, Landroid/os/CancellationSignalBeamer$Sender$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/CancellationSignalBeamer$Sender$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public abstract blacklist onCancel(Landroid/os/IBinder;)V
.end method

.method public abstract blacklist onForget(Landroid/os/IBinder;)V
.end method
