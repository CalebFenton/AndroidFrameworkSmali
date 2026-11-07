.class public interface abstract Landroid/media/tv/extension/tune/IMuxTune;
.super Ljava/lang/Object;
.source "IMuxTune.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/tune/IMuxTune$Stub;,
        Landroid/media/tv/extension/tune/IMuxTune$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.tune.IMuxTune"


# virtual methods
.method public abstract blacklist createSession(ILjava/lang/String;)Landroid/media/tv/extension/tune/IMuxTuneSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
