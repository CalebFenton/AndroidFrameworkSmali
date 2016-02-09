.class public final Lcom/android/server/am/UserState;
.super Ljava/lang/Object;
.source "UserState.java"


# static fields
.field public static final STATE_BOOTING:I = 0x0

.field public static final STATE_RUNNING:I = 0x1

.field public static final STATE_SHUTDOWN:I = 0x3

.field public static final STATE_STOPPING:I = 0x2


# instance fields
.field public initializing:Z

.field public final mHandle:Landroid/os/UserHandle;

.field public final mProviderLastReportedFg:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mState:I

.field public final mStopCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IStopUserCallback;",
            ">;"
        }
    .end annotation
.end field

.field public switching:Z


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Z)V
    .locals 1
    .param p1, "handle"    # Landroid/os/UserHandle;
    .param p2, "initial"    # Z

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    .line 37
    iput-object v0, p0, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    #@a
    .line 40
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/android/server/am/UserState;->mState:I

    #@d
    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    #@f
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    #@14
    .line 51
    iput-object p1, p0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    #@16
    .line 50
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 55
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mState="

    #@6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    .line 56
    iget v0, p0, Lcom/android/server/am/UserState;->mState:I

    #@b
    packed-switch v0, :pswitch_data_0

    #@e
    .line 61
    iget v0, p0, Lcom/android/server/am/UserState;->mState:I

    #@10
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@13
    .line 63
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/am/UserState;->switching:Z

    #@15
    if-eqz v0, :cond_0

    #@17
    const-string/jumbo v0, " SWITCHING"

    #@1a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d
    .line 64
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/UserState;->initializing:Z

    #@1f
    if-eqz v0, :cond_1

    #@21
    const-string/jumbo v0, " INITIALIZING"

    #@24
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@27
    .line 65
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@2a
    .line 54
    return-void

    #@2b
    .line 57
    :pswitch_0
    const-string/jumbo v0, "BOOTING"

    #@2e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    goto :goto_0

    #@32
    .line 58
    :pswitch_1
    const-string/jumbo v0, "RUNNING"

    #@35
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@38
    goto :goto_0

    #@39
    .line 59
    :pswitch_2
    const-string/jumbo v0, "STOPPING"

    #@3c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    goto :goto_0

    #@40
    .line 60
    :pswitch_3
    const-string/jumbo v0, "SHUTDOWN"

    #@43
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    goto :goto_0

    #@47
    .line 56
    nop

    #@48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
