.class public interface abstract Landroid/view/ISensitiveContentProtectionManager;
.super Ljava/lang/Object;
.source "ISensitiveContentProtectionManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ISensitiveContentProtectionManager$Stub;,
        Landroid/view/ISensitiveContentProtectionManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.ISensitiveContentProtectionManager"


# virtual methods
.method public abstract blacklist setSensitiveContentProtection(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
