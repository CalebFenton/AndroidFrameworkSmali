.class public Lcom/android/ims/internal/ImsStreamMediaSession;
.super Ljava/lang/Object;
.source "ImsStreamMediaSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/ImsStreamMediaSession$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsStreamMediaSession"


# instance fields
.field private mListener:Lcom/android/ims/internal/ImsStreamMediaSession$Listener;


# direct methods
.method constructor <init>(Lcom/android/ims/internal/IImsStreamMediaSession;)V
    .locals 0
    .param p1, "mediaSession"    # Lcom/android/ims/internal/IImsStreamMediaSession;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(Lcom/android/ims/internal/IImsStreamMediaSession;Lcom/android/ims/internal/ImsStreamMediaSession$Listener;)V
    .locals 0
    .param p1, "mediaSession"    # Lcom/android/ims/internal/IImsStreamMediaSession;
    .param p2, "listener"    # Lcom/android/ims/internal/ImsStreamMediaSession$Listener;

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsStreamMediaSession;-><init>(Lcom/android/ims/internal/IImsStreamMediaSession;)V

    #@3
    .line 44
    invoke-virtual {p0, p2}, Lcom/android/ims/internal/ImsStreamMediaSession;->setListener(Lcom/android/ims/internal/ImsStreamMediaSession$Listener;)V

    #@6
    .line 42
    return-void
.end method


# virtual methods
.method public setListener(Lcom/android/ims/internal/ImsStreamMediaSession$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/ImsStreamMediaSession$Listener;

    #@0
    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/ims/internal/ImsStreamMediaSession;->mListener:Lcom/android/ims/internal/ImsStreamMediaSession$Listener;

    #@2
    .line 54
    return-void
.end method
