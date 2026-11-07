.class public interface abstract Landroid/media/tv/extension/scan/IScanSatSearch;
.super Ljava/lang/Object;
.source "IScanSatSearch.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scan/IScanSatSearch$Stub;,
        Landroid/media/tv/extension/scan/IScanSatSearch$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.tv.extension.scan.IScanSatSearch"


# virtual methods
.method public abstract blacklist setCustomizedLnb(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
