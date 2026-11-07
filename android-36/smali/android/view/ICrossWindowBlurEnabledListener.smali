.class public interface abstract Landroid/view/ICrossWindowBlurEnabledListener;
.super Ljava/lang/Object;
.source "ICrossWindowBlurEnabledListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ICrossWindowBlurEnabledListener$Stub;,
        Landroid/view/ICrossWindowBlurEnabledListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.ICrossWindowBlurEnabledListener"


# virtual methods
.method public abstract blacklist onCrossWindowBlurEnabledChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
