.class Lcom/android/internal/midi/MidiDispatcher$1;
.super Landroid/media/midi/MidiSender;
.source "MidiDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/midi/MidiDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/midi/MidiDispatcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/midi/MidiDispatcher;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/midi/MidiDispatcher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/android/internal/midi/MidiDispatcher$1;->this$0:Lcom/android/internal/midi/MidiDispatcher;

    invoke-direct {p0}, Landroid/media/midi/MidiSender;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onConnect(Landroid/media/midi/MidiReceiver;)V
    .registers 3
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    .line 52
    iget-object v0, p0, Lcom/android/internal/midi/MidiDispatcher$1;->this$0:Lcom/android/internal/midi/MidiDispatcher;

    invoke-static {v0}, Lcom/android/internal/midi/MidiDispatcher;->-$$Nest$fgetmReceivers(Lcom/android/internal/midi/MidiDispatcher;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public whitelist onDisconnect(Landroid/media/midi/MidiReceiver;)V
    .registers 3
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    .line 57
    iget-object v0, p0, Lcom/android/internal/midi/MidiDispatcher$1;->this$0:Lcom/android/internal/midi/MidiDispatcher;

    invoke-static {v0}, Lcom/android/internal/midi/MidiDispatcher;->-$$Nest$fgetmReceivers(Lcom/android/internal/midi/MidiDispatcher;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method
