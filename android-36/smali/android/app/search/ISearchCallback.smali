.class public interface abstract Landroid/app/search/ISearchCallback;
.super Ljava/lang/Object;
.source "ISearchCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/search/ISearchCallback$Stub;,
        Landroid/app/search/ISearchCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.search.ISearchCallback"


# virtual methods
.method public abstract blacklist onResult(Landroid/content/pm/ParceledListSlice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
