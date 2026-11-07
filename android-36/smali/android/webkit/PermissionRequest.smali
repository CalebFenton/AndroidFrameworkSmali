.class public abstract Landroid/webkit/PermissionRequest;
.super Ljava/lang/Object;
.source "PermissionRequest.java"


# static fields
.field public static final whitelist RESOURCE_AUDIO_CAPTURE:Ljava/lang/String; = "android.webkit.resource.AUDIO_CAPTURE"

.field public static final whitelist RESOURCE_MIDI_SYSEX:Ljava/lang/String; = "android.webkit.resource.MIDI_SYSEX"

.field public static final whitelist RESOURCE_PROTECTED_MEDIA_ID:Ljava/lang/String; = "android.webkit.resource.PROTECTED_MEDIA_ID"

.field public static final whitelist RESOURCE_VIDEO_CAPTURE:Ljava/lang/String; = "android.webkit.resource.VIDEO_CAPTURE"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist deny()V
.end method

.method public abstract whitelist getOrigin()Landroid/net/Uri;
.end method

.method public abstract whitelist getResources()[Ljava/lang/String;
.end method

.method public abstract whitelist grant([Ljava/lang/String;)V
.end method
