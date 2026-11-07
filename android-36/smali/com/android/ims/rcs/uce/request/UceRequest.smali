.class public interface abstract Lcom/android/ims/rcs/uce/request/UceRequest;
.super Ljava/lang/Object;
.source "UceRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/request/UceRequest$UceRequestType;
    }
.end annotation


# static fields
.field public static final blacklist REQUEST_TYPE_AVAILABILITY:I = 0x2

.field public static final blacklist REQUEST_TYPE_CAPABILITY:I = 0x1


# virtual methods
.method public abstract blacklist executeRequest()V
.end method

.method public abstract blacklist getRequestCoordinatorId()J
.end method

.method public blacklist getRetryCount()I
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist getTaskId()J
.end method

.method public blacklist isRetryEnabled()Z
    .registers 2

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist onFinish()V
.end method

.method public abstract blacklist setContactUri(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist setRequestCoordinatorId(J)V
.end method

.method public blacklist setRetryCount(I)V
    .registers 2
    .param p1, "retries"    # I

    .line 85
    return-void
.end method

.method public blacklist setRetryEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 98
    return-void
.end method
