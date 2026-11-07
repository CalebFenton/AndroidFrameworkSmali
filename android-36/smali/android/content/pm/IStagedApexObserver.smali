.class public interface abstract Landroid/content/pm/IStagedApexObserver;
.super Ljava/lang/Object;
.source "IStagedApexObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IStagedApexObserver$Stub;,
        Landroid/content/pm/IStagedApexObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IStagedApexObserver"


# virtual methods
.method public abstract blacklist onApexStaged(Landroid/content/pm/ApexStagedEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
