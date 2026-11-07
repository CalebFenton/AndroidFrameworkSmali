.class public interface abstract annotation Landroid/nearby/PresenceDevice$DeviceType;
.super Ljava/lang/Object;
.source "PresenceDevice.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/PresenceDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "DeviceType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist DISPLAY:I = 0x3

.field public static final blacklist LAPTOP:I = 0x4

.field public static final blacklist PHONE:I = 0x1

.field public static final blacklist TABLET:I = 0x2

.field public static final blacklist TV:I = 0x5

.field public static final blacklist UNKNOWN:I = 0x0

.field public static final blacklist WATCH:I = 0x6
