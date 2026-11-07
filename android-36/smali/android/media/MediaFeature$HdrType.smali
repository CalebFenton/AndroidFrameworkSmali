.class public final Landroid/media/MediaFeature$HdrType;
.super Ljava/lang/Object;
.source "MediaFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HdrType"
.end annotation


# static fields
.field public static final whitelist DOLBY_VISION:Ljava/lang/String; = "android.media.feature.hdr.dolby_vision"

.field public static final whitelist HDR10:Ljava/lang/String; = "android.media.feature.hdr.hdr10"

.field public static final whitelist HDR10_PLUS:Ljava/lang/String; = "android.media.feature.hdr.hdr10_plus"

.field public static final whitelist HLG:Ljava/lang/String; = "android.media.feature.hdr.hlg"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
