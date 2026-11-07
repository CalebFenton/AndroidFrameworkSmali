.class public interface abstract Landroid/service/wearable/WearableSensingDataRequester;
.super Ljava/lang/Object;
.source "WearableSensingDataRequester.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wearable/WearableSensingDataRequester$StatusCode;
    }
.end annotation


# static fields
.field public static final whitelist STATUS_OBSERVER_CANCELLED:I = 0x2

.field public static final whitelist STATUS_SUCCESS:I = 0x1

.field public static final whitelist STATUS_TOO_FREQUENT:I = 0x4

.field public static final whitelist STATUS_TOO_LARGE:I = 0x3

.field public static final whitelist STATUS_UNKNOWN:I


# virtual methods
.method public abstract whitelist requestData(Landroid/app/wearable/WearableSensingDataRequest;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/wearable/WearableSensingDataRequest;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
