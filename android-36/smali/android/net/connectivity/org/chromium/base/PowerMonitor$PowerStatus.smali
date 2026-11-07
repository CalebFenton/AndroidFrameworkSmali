.class interface abstract annotation Landroid/net/connectivity/org/chromium/base/PowerMonitor$PowerStatus;
.super Ljava/lang/Object;
.source "PowerMonitor.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/PowerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2608
    name = "PowerStatus"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist BATTERY_POWER:I = 0x1

.field public static final blacklist EXTERNAL_POWER:I = 0x2

.field public static final blacklist UNKNOWN:I
