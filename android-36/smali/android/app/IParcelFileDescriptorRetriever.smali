.class public interface abstract Landroid/app/IParcelFileDescriptorRetriever;
.super Ljava/lang/Object;
.source "IParcelFileDescriptorRetriever.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IParcelFileDescriptorRetriever$Stub;,
        Landroid/app/IParcelFileDescriptorRetriever$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IParcelFileDescriptorRetriever"


# virtual methods
.method public abstract blacklist getPfd()Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
