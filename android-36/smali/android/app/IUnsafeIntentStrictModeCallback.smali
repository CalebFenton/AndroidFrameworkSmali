.class public interface abstract Landroid/app/IUnsafeIntentStrictModeCallback;
.super Ljava/lang/Object;
.source "IUnsafeIntentStrictModeCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUnsafeIntentStrictModeCallback$Stub;,
        Landroid/app/IUnsafeIntentStrictModeCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IUnsafeIntentStrictModeCallback"


# virtual methods
.method public abstract blacklist onUnsafeIntent(ILandroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
