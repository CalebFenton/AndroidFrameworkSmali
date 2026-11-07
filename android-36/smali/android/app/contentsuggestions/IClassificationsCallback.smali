.class public interface abstract Landroid/app/contentsuggestions/IClassificationsCallback;
.super Ljava/lang/Object;
.source "IClassificationsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contentsuggestions/IClassificationsCallback$Stub;,
        Landroid/app/contentsuggestions/IClassificationsCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.contentsuggestions.IClassificationsCallback"


# virtual methods
.method public abstract blacklist onContentClassificationsAvailable(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/contentsuggestions/ContentClassification;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
