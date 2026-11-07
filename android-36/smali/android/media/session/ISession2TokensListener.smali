.class public interface abstract Landroid/media/session/ISession2TokensListener;
.super Ljava/lang/Object;
.source "ISession2TokensListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISession2TokensListener$Stub;,
        Landroid/media/session/ISession2TokensListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISession2TokensListener"


# virtual methods
.method public abstract blacklist onSession2TokensChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/Session2Token;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
