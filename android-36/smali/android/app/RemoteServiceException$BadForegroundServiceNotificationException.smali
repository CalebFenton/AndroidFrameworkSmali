.class public Landroid/app/RemoteServiceException$BadForegroundServiceNotificationException;
.super Landroid/app/RemoteServiceException;
.source "RemoteServiceException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/RemoteServiceException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadForegroundServiceNotificationException"
.end annotation


# static fields
.field public static final blacklist TYPE_ID:I = 0x3


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 127
    invoke-direct {p0, p1}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    .line 128
    return-void
.end method
