.class public interface abstract Landroid/media/tv/extension/clienttoken/IClientToken;
.super Ljava/lang/Object;
.source "IClientToken.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/clienttoken/IClientToken$Stub;,
        Landroid/media/tv/extension/clienttoken/IClientToken$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.clienttoken.IClientToken"


# virtual methods
.method public abstract blacklist generateClientToken()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
