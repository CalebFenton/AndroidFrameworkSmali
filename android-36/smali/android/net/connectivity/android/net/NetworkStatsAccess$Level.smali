.class public interface abstract annotation Landroid/net/connectivity/android/net/NetworkStatsAccess$Level;
.super Ljava/lang/Object;
.source "NetworkStatsAccess.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/NetworkStatsAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Level"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist DEFAULT:I = 0x0

.field public static final blacklist DEVICE:I = 0x3

.field public static final blacklist DEVICESUMMARY:I = 0x2

.field public static final blacklist USER:I = 0x1
