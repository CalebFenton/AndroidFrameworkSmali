.class public Landroid/app/RemoteServiceException$CannotPostForegroundServiceNotificationException;
.super Landroid/app/RemoteServiceException;
.source "RemoteServiceException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/RemoteServiceException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CannotPostForegroundServiceNotificationException"
.end annotation


# static fields
.field public static final blacklist TYPE_ID:I = 0x2


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 112
    invoke-direct {p0, p1}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    .line 113
    return-void
.end method
