.class public Landroid/media/MediaSession2Service$MediaNotification;
.super Ljava/lang/Object;
.source "MediaSession2Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaSession2Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaNotification"
.end annotation


# instance fields
.field private final blacklist mNotification:Landroid/app/Notification;

.field private final blacklist mNotificationId:I


# direct methods
.method public constructor whitelist <init>(ILandroid/app/Notification;)V
    .registers 3

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_a

    .line 315
    iput p1, p0, Landroid/media/MediaSession2Service$MediaNotification;->mNotificationId:I

    .line 316
    iput-object p2, p0, Landroid/media/MediaSession2Service$MediaNotification;->mNotification:Landroid/app/Notification;

    return-void

    .line 313
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "notification shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist getNotification()Landroid/app/Notification;
    .registers 1

    .line 335
    iget-object p0, p0, Landroid/media/MediaSession2Service$MediaNotification;->mNotification:Landroid/app/Notification;

    return-object p0
.end method

.method public whitelist getNotificationId()I
    .registers 1

    .line 325
    iget p0, p0, Landroid/media/MediaSession2Service$MediaNotification;->mNotificationId:I

    return p0
.end method
