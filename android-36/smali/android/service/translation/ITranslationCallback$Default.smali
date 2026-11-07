.class public Landroid/service/translation/ITranslationCallback$Default;
.super Ljava/lang/Object;
.source "ITranslationCallback.java"

# interfaces
.implements Landroid/service/translation/ITranslationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/translation/ITranslationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onTranslationResponse(Landroid/view/translation/TranslationResponse;)V
    .registers 2
    .param p1, "translationResponse"    # Landroid/view/translation/TranslationResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
