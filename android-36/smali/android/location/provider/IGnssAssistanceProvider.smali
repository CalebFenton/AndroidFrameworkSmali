.class public interface abstract Landroid/location/provider/IGnssAssistanceProvider;
.super Ljava/lang/Object;
.source "IGnssAssistanceProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/provider/IGnssAssistanceProvider$Stub;,
        Landroid/location/provider/IGnssAssistanceProvider$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.location.provider.IGnssAssistanceProvider"


# virtual methods
.method public abstract blacklist request(Landroid/location/provider/IGnssAssistanceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
