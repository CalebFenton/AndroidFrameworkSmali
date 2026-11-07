.class public Landroid/app/RemoteServiceException;
.super Landroid/util/AndroidRuntimeException;
.source "RemoteServiceException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/RemoteServiceException$CrashedByAdbException;,
        Landroid/app/RemoteServiceException$MissingRequestPasswordComplexityPermissionException;,
        Landroid/app/RemoteServiceException$BadUserInitiatedJobNotificationException;,
        Landroid/app/RemoteServiceException$BadForegroundServiceNotificationException;,
        Landroid/app/RemoteServiceException$CannotPostForegroundServiceNotificationException;,
        Landroid/app/RemoteServiceException$ForegroundServiceDidNotStopInTimeException;,
        Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method
