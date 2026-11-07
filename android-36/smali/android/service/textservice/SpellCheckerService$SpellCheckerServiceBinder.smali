.class Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;
.super Lcom/android/internal/textservice/ISpellCheckerService$Stub;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpellCheckerServiceBinder"
.end annotation


# instance fields
.field private final greylist-max-o mInternalServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/textservice/SpellCheckerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/service/textservice/SpellCheckerService;)V
    .registers 3
    .param p1, "service"    # Landroid/service/textservice/SpellCheckerService;

    .line 330
    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerService$Stub;-><init>()V

    .line 331
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;->mInternalServiceRef:Ljava/lang/ref/WeakReference;

    .line 332
    return-void
.end method


# virtual methods
.method public blacklist getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;ILcom/android/internal/textservice/ISpellCheckerServiceCallback;)V
    .registers 14
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "supportedAttributes"    # I
    .param p5, "callback"    # Lcom/android/internal/textservice/ISpellCheckerServiceCallback;

    .line 354
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;->mInternalServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/service/textservice/SpellCheckerService;

    .line 356
    .local v1, "service":Landroid/service/textservice/SpellCheckerService;
    if-nez v1, :cond_12

    .line 359
    const/4 v0, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    move-object p1, v0

    .local v0, "internalSession":Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;
    goto :goto_24

    .line 361
    .end local v0    # "internalSession":Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;
    :cond_12
    invoke-virtual {v1}, Landroid/service/textservice/SpellCheckerService;->createSession()Landroid/service/textservice/SpellCheckerService$Session;

    move-result-object v6

    .line 362
    .local v6, "session":Landroid/service/textservice/SpellCheckerService$Session;
    new-instance v2, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    .end local p1    # "locale":Ljava/lang/String;
    .end local p2    # "listener":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .end local p3    # "bundle":Landroid/os/Bundle;
    .end local p4    # "supportedAttributes":I
    .local v3, "locale":Ljava/lang/String;
    .local v4, "listener":Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .local v5, "bundle":Landroid/os/Bundle;
    .local v7, "supportedAttributes":I
    invoke-direct/range {v2 .. v7}, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;-><init>(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Landroid/service/textservice/SpellCheckerService$Session;I)V

    move-object v0, v2

    .line 364
    .restart local v0    # "internalSession":Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;
    invoke-virtual {v6}, Landroid/service/textservice/SpellCheckerService$Session;->onCreate()V

    move-object p1, v0

    .line 367
    .end local v0    # "internalSession":Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;
    .end local v6    # "session":Landroid/service/textservice/SpellCheckerService$Session;
    .local p1, "internalSession":Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;
    :goto_24
    :try_start_24
    invoke-interface {p5, p1}, Lcom/android/internal/textservice/ISpellCheckerServiceCallback;->onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_28

    .line 369
    goto :goto_29

    .line 368
    :catch_28
    move-exception v0

    .line 370
    :goto_29
    return-void
.end method
