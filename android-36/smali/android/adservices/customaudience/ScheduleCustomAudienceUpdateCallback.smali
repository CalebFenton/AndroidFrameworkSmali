.class public interface abstract Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateCallback;
.super Ljava/lang/Object;
.source "ScheduleCustomAudienceUpdateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateCallback$Stub;,
        Landroid/adservices/customaudience/ScheduleCustomAudienceUpdateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.customaudience.ScheduleCustomAudienceUpdateCallback"


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
