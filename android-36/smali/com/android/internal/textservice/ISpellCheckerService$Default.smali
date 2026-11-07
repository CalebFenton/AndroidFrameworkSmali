.class public Lcom/android/internal/textservice/ISpellCheckerService$Default;
.super Ljava/lang/Object;
.source "ISpellCheckerService.java"

# interfaces
.implements Lcom/android/internal/textservice/ISpellCheckerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/textservice/ISpellCheckerService;
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

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;ILcom/android/internal/textservice/ISpellCheckerServiceCallback;)V
    .registers 6
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "supportedAttributes"    # I
    .param p5, "callback"    # Lcom/android/internal/textservice/ISpellCheckerServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method
