.class public interface abstract Landroid/adservices/customaudience/ICustomAudienceCallback;
.super Ljava/lang/Object;
.source "ICustomAudienceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/customaudience/ICustomAudienceCallback$Stub;,
        Landroid/adservices/customaudience/ICustomAudienceCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.customaudience.ICustomAudienceCallback"


# virtual methods
.method public abstract blacklist onFailure(Landroid/adservices/common/FledgeErrorResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
