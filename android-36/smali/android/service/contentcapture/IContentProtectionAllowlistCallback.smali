.class public interface abstract Landroid/service/contentcapture/IContentProtectionAllowlistCallback;
.super Ljava/lang/Object;
.source "IContentProtectionAllowlistCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/contentcapture/IContentProtectionAllowlistCallback$Stub;,
        Landroid/service/contentcapture/IContentProtectionAllowlistCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.contentcapture.IContentProtectionAllowlistCallback"


# virtual methods
.method public abstract blacklist setAllowlist(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
