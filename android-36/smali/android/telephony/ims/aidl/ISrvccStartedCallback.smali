.class public interface abstract Landroid/telephony/ims/aidl/ISrvccStartedCallback;
.super Ljava/lang/Object;
.source "ISrvccStartedCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/ISrvccStartedCallback$Stub;,
        Landroid/telephony/ims/aidl/ISrvccStartedCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.ISrvccStartedCallback"


# virtual methods
.method public abstract blacklist onSrvccCallNotified(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/SrvccCall;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
