.class public interface abstract Landroid/os/ISecurityStateManager;
.super Ljava/lang/Object;
.source "ISecurityStateManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISecurityStateManager$Stub;,
        Landroid/os/ISecurityStateManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.ISecurityStateManager"


# virtual methods
.method public abstract blacklist getGlobalSecurityState()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
