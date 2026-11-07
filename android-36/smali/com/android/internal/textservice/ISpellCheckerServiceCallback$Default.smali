.class public Lcom/android/internal/textservice/ISpellCheckerServiceCallback$Default;
.super Ljava/lang/Object;
.source "ISpellCheckerServiceCallback.java"

# interfaces
.implements Lcom/android/internal/textservice/ISpellCheckerServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/textservice/ISpellCheckerServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .registers 2
    .param p1, "newSession"    # Lcom/android/internal/textservice/ISpellCheckerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
