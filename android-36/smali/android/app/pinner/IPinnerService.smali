.class public interface abstract Landroid/app/pinner/IPinnerService;
.super Ljava/lang/Object;
.source "IPinnerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/pinner/IPinnerService$Stub;,
        Landroid/app/pinner/IPinnerService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.pinner.IPinnerService"


# virtual methods
.method public abstract blacklist getPinnerStats()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/pinner/PinnedFileStat;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
