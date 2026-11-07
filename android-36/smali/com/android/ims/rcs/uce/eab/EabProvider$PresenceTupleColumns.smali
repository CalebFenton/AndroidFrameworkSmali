.class public Lcom/android/ims/rcs/uce/eab/EabProvider$PresenceTupleColumns;
.super Ljava/lang/Object;
.source "EabProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/eab/EabProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PresenceTupleColumns"
.end annotation


# static fields
.field public static final blacklist AUDIO_CAPABLE:Ljava/lang/String; = "audio_capable"

.field public static final blacklist BASIC_STATUS:Ljava/lang/String; = "basic_status"

.field public static final blacklist CONTACT_URI:Ljava/lang/String; = "contact_uri"

.field public static final blacklist DESCRIPTION:Ljava/lang/String; = "description"

.field public static final blacklist DUPLEX_MODE:Ljava/lang/String; = "duplex_mode"

.field public static final blacklist EAB_COMMON_ID:Ljava/lang/String; = "eab_common_id"

.field public static final blacklist REQUEST_TIMESTAMP:Ljava/lang/String; = "presence_request_timestamp"

.field public static final blacklist SERVICE_ID:Ljava/lang/String; = "service_id"

.field public static final blacklist SERVICE_VERSION:Ljava/lang/String; = "service_version"

.field public static final blacklist UNSUPPORTED_DUPLEX_MODE:Ljava/lang/String; = "unsupported_duplex_mode"

.field public static final blacklist VIDEO_CAPABLE:Ljava/lang/String; = "video_capable"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
