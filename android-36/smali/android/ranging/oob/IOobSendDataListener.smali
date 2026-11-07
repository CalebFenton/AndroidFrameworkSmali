.class public interface abstract Landroid/ranging/oob/IOobSendDataListener;
.super Ljava/lang/Object;
.source "IOobSendDataListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/oob/IOobSendDataListener$Stub;,
        Landroid/ranging/oob/IOobSendDataListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.ranging.oob.IOobSendDataListener"


# virtual methods
.method public abstract blacklist sendOobData(Landroid/ranging/oob/OobHandle;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
