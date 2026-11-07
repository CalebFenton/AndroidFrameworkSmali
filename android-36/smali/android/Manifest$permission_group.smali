.class public final Landroid/Manifest$permission_group;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission_group"
.end annotation


# static fields
.field public static final whitelist ACTIVITY_RECOGNITION:Ljava/lang/String; = "android.permission-group.ACTIVITY_RECOGNITION"

.field public static final whitelist CALENDAR:Ljava/lang/String; = "android.permission-group.CALENDAR"

.field public static final whitelist CALL_LOG:Ljava/lang/String; = "android.permission-group.CALL_LOG"

.field public static final whitelist CAMERA:Ljava/lang/String; = "android.permission-group.CAMERA"

.field public static final whitelist CONTACTS:Ljava/lang/String; = "android.permission-group.CONTACTS"

.field public static final whitelist LOCATION:Ljava/lang/String; = "android.permission-group.LOCATION"

.field public static final whitelist MICROPHONE:Ljava/lang/String; = "android.permission-group.MICROPHONE"

.field public static final whitelist NEARBY_DEVICES:Ljava/lang/String; = "android.permission-group.NEARBY_DEVICES"

.field public static final whitelist NOTIFICATIONS:Ljava/lang/String; = "android.permission-group.NOTIFICATIONS"

.field public static final whitelist PHONE:Ljava/lang/String; = "android.permission-group.PHONE"

.field public static final whitelist READ_MEDIA_AURAL:Ljava/lang/String; = "android.permission-group.READ_MEDIA_AURAL"

.field public static final whitelist READ_MEDIA_VISUAL:Ljava/lang/String; = "android.permission-group.READ_MEDIA_VISUAL"

.field public static final whitelist SENSORS:Ljava/lang/String; = "android.permission-group.SENSORS"

.field public static final whitelist SMS:Ljava/lang/String; = "android.permission-group.SMS"

.field public static final whitelist STORAGE:Ljava/lang/String; = "android.permission-group.STORAGE"

.field public static final whitelist UNDEFINED:Ljava/lang/String; = "android.permission-group.UNDEFINED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist XR_TRACKING:Ljava/lang/String; = "android.permission-group.XR_TRACKING"

.field public static final blacklist XR_TRACKING_SENSITIVE:Ljava/lang/String; = "android.permission-group.XR_TRACKING_SENSITIVE"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 7191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
