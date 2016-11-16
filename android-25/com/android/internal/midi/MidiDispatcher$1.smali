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
.field final synthetic this$0:Lcom/android/internal/midi/MidiDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/midi/MidiDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/midi/MidiDispatcher;

    #@0
    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/internal/midi/MidiDispatcher$1;->this$0:Lcom/android/internal/midi/MidiDispatcher;

    #@2
    invoke-direct {p0}, Landroid/media/midi/MidiSender;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onConnect(Landroid/media/midi/MidiReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/midi/MidiDispatcher$1;->this$0:Lcom/android/internal/midi/MidiDispatcher;

    #@2
    invoke-static {v0}, Lcom/android/internal/midi/MidiDispatcher;->-get0(Lcom/android/internal/midi/MidiDispatcher;)Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@9
    .line 39
    return-void
.end method

.method public onDisconnect(Landroid/media/midi/MidiReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/midi/MidiDispatcher$1;->this$0:Lcom/android/internal/midi/MidiDispatcher;

    #@2
    invoke-static {v0}, Lcom/android/internal/midi/MidiDispatcher;->-get0(Lcom/android/internal/midi/MidiDispatcher;)Ljava/util/concurrent/CopyOnWriteArrayList;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@9
    .line 44
    return-void
.end method
