.class public interface abstract annotation Landroid/hardware/radio/RadioAccessFamily;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioAccessFamily$$;
    }
.end annotation


# static fields
.field public static final blacklist EDGE:I = 0x4

.field public static final blacklist EHRPD:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EVDO_0:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EVDO_A:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EVDO_B:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist GPRS:I = 0x2

.field public static final blacklist GSM:I = 0x10000

.field public static final blacklist HSDPA:I = 0x200

.field public static final blacklist HSPA:I = 0x800

.field public static final blacklist HSPAP:I = 0x8000

.field public static final blacklist HSUPA:I = 0x400

.field public static final blacklist IS95A:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist IS95B:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist IWLAN:I = 0x40000

.field public static final blacklist LTE:I = 0x4000

.field public static final blacklist LTE_CA:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist NR:I = 0x100000

.field public static final blacklist ONE_X_RTT:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist TD_SCDMA:I = 0x20000

.field public static final blacklist UMTS:I = 0x8

.field public static final blacklist UNKNOWN:I = 0x1
