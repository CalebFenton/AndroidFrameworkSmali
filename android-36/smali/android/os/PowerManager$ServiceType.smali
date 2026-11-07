.class public interface abstract annotation Landroid/os/PowerManager$ServiceType;
.super Ljava/lang/Object;
.source "PowerManager.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ServiceType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final greylist-max-o ANIMATION:I = 0x3

.field public static final greylist-max-o AOD:I = 0xe

.field public static final greylist-max-o BATTERY_STATS:I = 0x9

.field public static final greylist-max-o DATA_SAVER:I = 0xa

.field public static final greylist-max-o FORCE_ALL_APPS_STANDBY:I = 0xb

.field public static final greylist-max-o FORCE_BACKGROUND_CHECK:I = 0xc

.field public static final greylist-max-o FULL_BACKUP:I = 0x4

.field public static final greylist-max-o KEYVALUE_BACKUP:I = 0x5

.field public static final blacklist LOCATION:I = 0x1

.field public static final greylist-max-o NETWORK_FIREWALL:I = 0x6

.field public static final blacklist NIGHT_MODE:I = 0x10

.field public static final greylist-max-o NULL:I = 0x0

.field public static final greylist-max-o OPTIONAL_SENSORS:I = 0xd

.field public static final blacklist QUICK_DOZE:I = 0xf

.field public static final greylist-max-o SCREEN_BRIGHTNESS:I = 0x7

.field public static final greylist-max-o SOUND:I = 0x8

.field public static final greylist-max-o VIBRATION:I = 0x2
